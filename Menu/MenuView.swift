//
//  ContentView.swift
//  Menu
//
//  Created by Kristich, Erin M on 1/29/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var ItemArray: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
       
        List(ItemArray) { item in
            
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:50)
                    .cornerRadius(10)
                Text(item.name)
                    .bold()
                Spacer()
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color(
                .brown
                    .opacity(0.1)
            )
                               )
            
        }
        .listStyle(.plain)
        .onAppear{
            ItemArray = dataService.getData()
        }
        
        }
       
    }


#Preview {
    MenuView()
}
