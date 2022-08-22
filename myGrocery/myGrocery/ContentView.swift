//
//  ContentView.swift
//  myGrocery
//
//  Created by Nono. on 11/08/2022.
//

import SwiftUI

struct ContentView: View {
@State var GroceryItems = ["Haribo", "Kinder", "Pepsi", "Pringles", "Takis"]
    @State var NewItem = ""
    var body: some View {
        VStack {
            List(GroceryItems,id:\.self){ i in
                HStack{
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text(i)
                }
            }
            
            HStack{
                Button {
                    GroceryItems.append(NewItem)
                }
            label: {
                 Image(systemName: "plus")
                    .frame(width: 40, height: 40)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            TextField("New Item", text: $NewItem)
                    
                Button{
                    GroceryItems.remove(at: 0)
                }
                label: {
                Image(systemName: "minus")
                    .frame(width: 40, height: 40)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    }
                } .padding()
            
            
        }
       
    }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
