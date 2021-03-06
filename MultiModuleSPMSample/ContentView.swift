//
//  ContentView.swift
//  MultiModuleSPMSample
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                viewModel.getData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
