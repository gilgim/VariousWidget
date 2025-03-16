//
//  VariousWidgetMainView.swift
//  VariousWidget
//
//  Created by gilgim on 3/16/25.
//

import SwiftUI

struct VariousWidgetMainView: View {
    @State var vm = VariousWidgetMainViewModel()
    var body: some View {
        Text("Hello, World!")
            .onAppear() {
                vm.readWorkOut()
            }
    }
}

#Preview {
    VariousWidgetMainView()
}
