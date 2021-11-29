//
//  ContentView.swift
//  Fructus
//
//  Created by md tonoy akanda on 11/28/21.
//

import SwiftUI

struct ContentView: View {
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSetting: Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruites")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetting = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }.sheet(isPresented: $isShowingSetting) {
                SettingsView()
            }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
