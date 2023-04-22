//
//  ContentView.swift
//  CarTracker
//
//  Created by Sebastian Frosch on 20.04.23.
//

import SwiftUI

struct CarTrackerView: View {
    
    @Binding var searchText: String
    
    @State var savedItems: [String] = [""]
    @State var newItem: String = ""
    
    @State private var model = ""
    @State private var horsepower = ""
    @State private var weight = ""
    @State private var year = ""
    
    var body: some View {
        
        NavigationView{
            VStack {
                    
                HStack{
                    VStack{
                        TextField("Model", text: $model)
                            
                        TextField("HP", text: $horsepower)
                            .padding()
                        
                    }
                    
                    VStack{
                        TextField("Weight", text: $weight)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .frame(height: 40)
                        
                        TextField("Year", text: $year)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .frame(height: 40)
                            
                    }
                    
                    
                    Button(action: {
                        savedItems.append(newItem)
                        newItem = ""
                    }, label: {
                        Label("Add", systemImage: "plus")
                            .padding()
                    })
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .frame(height: 40)
                    .padding()
                    
                }
                
                TextField("Search" ,text: $searchText)
                    .padding(.leading, 10)
                    .padding(.trailing, 5)
                    .foregroundColor(.gray)
                    .frame(height: 40)
                    .frame(width: 220)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                
                
                
                
                List(savedItems, id: \.self) { item in
                    Text(item)
                    
                    
                    
                    
                }
            }
        }
    }
    
    struct CarTrackerView_Previews: PreviewProvider {
        static var previews: some View {
            CarTrackerView(searchText: .constant(""))
        }
    }
}
