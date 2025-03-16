//
//  VariousWidgetMainViewModel.swift
//  VariousWidget
//
//  Created by gilgim on 3/16/25.
//

import Foundation
import HealthKit

@Observable
class VariousWidgetMainViewModel {
    func readTargetWorkOut(lastYear: Int = 1) {
        let workoutType = HKObjectType.workoutType()
        let healthStore = HKHealthStore()
        
        // Define the date range: from one year ago to now
        let calendar = Calendar.current
        let now = Date()
        guard let startDate = calendar.date(byAdding: .year, value: -lastYear, to: now) else { return }
        let datePredicate = HKQuery.predicateForSamples(withStart: startDate, end: now, options: .strictStartDate)
        
        // Create predicates for each workout activity type
        let typePredicates: [NSPredicate] = HKWorkoutActivityType.allTypes().compactMap {
            HKQuery.predicateForWorkouts(with: $0)
        }
        let workoutTypePredicate = NSCompoundPredicate(orPredicateWithSubpredicates: typePredicates)
        
        // Combine date and activity type predicates
        let finalPredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [datePredicate, workoutTypePredicate])
        
        // Create the sample query to fetch workouts
        let query = HKSampleQuery(sampleType: workoutType,
                                  predicate: finalPredicate,
                                  limit: HKObjectQueryNoLimit,
                                  sortDescriptors: nil) { query, samples, error in
            if let error = error {
                print("Exercise Query Error: \(error.localizedDescription)")
                return
            }
            
            guard let workouts = samples as? [HKWorkout] else { return }
            for workout in workouts {
                let activityName = workout.workoutActivityType.propertyReference.name
                print("""
                    ==============================
                    Activity: \(activityName)
                    Start Date: \(workout.startDate)
                    End Date: \(workout.endDate)
                    Duration: \(workout.duration)
                    ==============================
                    """)
            }
        }
        healthStore.execute(query)
    }
    func readWorkOut() {
        let workOutType = HKObjectType.workoutType()
        let healthStore = HKHealthStore()
        let predicates = HKWorkoutActivityType.allTypes().map {
            HKQuery.predicateForWorkouts(with: $0)
        }
        let workoutTypePredicate = NSCompoundPredicate(orPredicateWithSubpredicates: predicates)
        let query = HKSampleQuery(sampleType: workOutType, predicate: workoutTypePredicate, limit: HKObjectQueryNoLimit, sortDescriptors: nil) { query, sample, error in
            if let error = error {
                print("Exercise Query Error: \(error.localizedDescription)")
                return
            }
            guard let workouts = sample as? [HKWorkout] else {return}
            for workout in workouts {
                let activityName = workout.workoutActivityType.propertyReference.name
                print("""
                ==============================
                Activity: \(activityName)
                Start Date: \(workout.startDate)
                End Date: \(workout.endDate)
                Duration: \(workout.duration)
                ==============================
                """)
            }
        }
        healthStore.execute(query)
    }
    func requestAuthorization() {
        let healthStore = HKHealthStore()
        let workoutType = HKObjectType.workoutType()
        let readTypes: Set<HKObjectType> = [workoutType]
        healthStore.requestAuthorization(toShare: nil, read: readTypes) { success, error in
            if !success {
                print("Authorization failed: \(error?.localizedDescription ?? "unknown error")")
                return
            }
        }
    }
}
