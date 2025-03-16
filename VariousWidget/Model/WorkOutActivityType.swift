//
//  WorkOutActivityType.swift
//  VariousWidget
//
//  Created by gilgim on 3/16/25.
//

import HealthKit

extension HKWorkoutActivityType {
    var propertyReference: (rawValue: Int, name: String) {
        switch self {
        case .americanFootball:            return (1, "American Football")
        case .archery:                     return (2, "Archery")
        case .australianFootball:          return (3, "Australian Football")
        case .badminton:                   return (4, "Badminton")
        case .baseball:                    return (5, "Baseball")
        case .basketball:                  return (6, "Basketball")
        case .bowling:                     return (7, "Bowling")
        case .boxing:                      return (8, "Boxing")
        case .climbing:                    return (9, "Climbing")
        case .cricket:                     return (10, "Cricket")
        case .crossTraining:               return (11, "Cross Training")
        case .curling:                     return (12, "Curling")
        case .cycling:                     return (13, "Cycling")
        case .dance:                       return (14, "Dance")
        case .danceInspiredTraining:       return (15, "Dance Inspired Training")
        case .elliptical:                  return (16, "Elliptical")
        case .equestrianSports:            return (17, "Equestrian Sports")
        case .fencing:                     return (18, "Fencing")
        case .fishing:                     return (19, "Fishing")
        case .functionalStrengthTraining:  return (20, "Functional Strength Training")
        case .golf:                        return (21, "Golf")
        case .gymnastics:                  return (22, "Gymnastics")
        case .handball:                    return (23, "Handball")
        case .hiking:                      return (24, "Hiking")
        case .hockey:                      return (25, "Hockey")
        case .hunting:                     return (26, "Hunting")
        case .lacrosse:                    return (27, "Lacrosse")
        case .martialArts:                 return (28, "Martial Arts")
        case .mindAndBody:                 return (29, "Mind & Body")
        case .mixedMetabolicCardioTraining:return (30, "Mixed Metabolic Cardio Training")
        case .paddleSports:                return (31, "Paddle Sports")
        case .play:                        return (32, "Play")
        case .preparationAndRecovery:      return (33, "Preparation and Recovery")
        case .racquetball:                 return (34, "Racquetball")
        case .rowing:                     return (35, "Rowing")
        case .rugby:                      return (36, "Rugby")
        case .running:                    return (37, "Running")
        case .sailing:                    return (38, "Sailing")
        case .skatingSports:              return (39, "Skating Sports")
        case .snowSports:                 return (40, "Snow Sports")
        case .soccer:                     return (41, "Soccer")
        case .softball:                   return (42, "Softball")
        case .squash:                     return (43, "Squash")
        case .stairClimbing:              return (44, "Stair Climbing")
        case .surfingSports:              return (45, "Surfing Sports")
        case .swimming:                   return (46, "Swimming")
        case .tableTennis:                return (47, "Table Tennis")
        case .tennis:                     return (48, "Tennis")
        case .trackAndField:              return (49, "Track and Field")
        case .traditionalStrengthTraining:return (50, "Traditional Strength Training")
        case .volleyball:                 return (51, "Volleyball")
        case .walking:                    return (52, "Walking")
        case .waterFitness:               return (53, "Water Fitness")
        case .waterPolo:                  return (54, "Water Polo")
        case .waterSports:                return (55, "Water Sports")
        case .wrestling:                  return (56, "Wrestling")
        case .yoga:                       return (57, "Yoga")
        case .barre:                      return (58, "Barre")
        case .coreTraining:               return (59, "Core Training")
        case .crossCountrySkiing:         return (60, "Cross Country Skiing")
        case .downhillSkiing:             return (61, "Downhill Skiing")
        case .flexibility:                return (62, "Flexibility")
        case .highIntensityIntervalTraining: return (63, "High Intensity Interval Training")
        case .jumpRope:                   return (64, "Jump Rope")
        case .kickboxing:                 return (65, "Kickboxing")
        case .pilates:                    return (66, "Pilates")
        case .snowboarding:               return (67, "Snowboarding")
        case .stairs:                     return (68, "Stairs")
        case .stepTraining:               return (69, "Step Training")
        case .wheelchairWalkPace:         return (70, "Wheelchair Walk Pace")
        case .wheelchairRunPace:          return (71, "Wheelchair Run Pace")
        case .taiChi:                     return (72, "Tai Chi")
        case .mixedCardio:                return (73, "Mixed Cardio")
        case .handCycling:                return (74, "Hand Cycling")
        case .discSports:                 return (75, "Disc Sports")
        case .fitnessGaming:              return (76, "Fitness Gaming")
        case .cardioDance:                return (77, "Cardio Dance")
        case .socialDance:                return (78, "Social Dance")
        case .pickleball:                 return (79, "Pickleball")
        case .cooldown:                   return (80, "Cooldown")
        case .swimBikeRun:                return (82, "Swim Bike Run")
        case .transition:                 return (83, "Transition")
        case .underwaterDiving:           return (84, "Underwater Diving")
        case .other:                      return (3000, "Other")
        @unknown default:
            return (0, "Unknown")
        }
    }
    static func allTypes() -> [HKWorkoutActivityType] {
        return [
            .americanFootball,
            .archery,
            .australianFootball,
            .badminton,
            .baseball,
            .basketball,
            .bowling,
            .boxing,
            .climbing,
            .cricket,
            .crossTraining,
            .curling,
            .cycling,
            .dance,
            .danceInspiredTraining,
            .elliptical,
            .equestrianSports,
            .fencing,
            .fishing,
            .functionalStrengthTraining,
            .golf,
            .gymnastics,
            .handball,
            .hiking,
            .hockey,
            .hunting,
            .lacrosse,
            .martialArts,
            .mindAndBody,
            .mixedMetabolicCardioTraining,
            .paddleSports,
            .play,
            .preparationAndRecovery,
            .racquetball,
            .rowing,
            .rugby,
            .running,
            .sailing,
            .skatingSports,
            .snowSports,
            .soccer,
            .softball,
            .squash,
            .stairClimbing,
            .surfingSports,
            .swimming,
            .tableTennis,
            .tennis,
            .trackAndField,
            .traditionalStrengthTraining,
            .volleyball,
            .walking,
            .waterFitness,
            .waterPolo,
            .waterSports,
            .wrestling,
            .yoga,
            // iOS 10+
            .barre,
            .coreTraining,
            .crossCountrySkiing,
            .downhillSkiing,
            .flexibility,
            .highIntensityIntervalTraining,
            .jumpRope,
            .kickboxing,
            .pilates,
            .snowboarding,
            .stairs,
            .stepTraining,
            .wheelchairWalkPace,
            .wheelchairRunPace,
            // iOS 11+
            .taiChi,
            .mixedCardio,
            .handCycling,
            // iOS 13+
            .discSports,
            .fitnessGaming,
            // iOS 14+
            .cardioDance,
            .socialDance,
            .pickleball,
            .cooldown,
            // iOS 16+
            .swimBikeRun,
            .transition,
            // iOS 17+
            .underwaterDiving,
            // Other
            .other
        ]
    }
}
