//
//  ContentView.swift
//  CW8
//
//  Created by Shhooda on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors  = [Color.teal.opacity(0.4),Color.blue.opacity(0.4),Color.yellow.opacity(0.4),Color.red.opacity(0.4)]
    
    @State var myNote = ""
    @State var selected : Color = Color.indigo
    @State private var anime = false
   // @State private var selected1 = false
    var body: some View {
        
        NavigationView{
        ZStack{
            
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Choose Your Favourite Color!")
                    .font(.system(size: 35))
                    
                HStack{
                    ForEach(colors,id: \.self){
                        color in
                        Circle()
                            .fill(color)
                            .frame(width: 70, height: 70)
                           // .offset(x: anime ? 30 : 0, y:anime ? -100 : 0 )
                            .scaleEffect(anime ? 1.5 : 1.0)
                            .onTapGesture {
                                selected = color
                                withAnimation(.spring()){
                                    anime.toggle()
                                }
                            }
                    }
                    
                    
                }.padding()
                
                Text("What Do You Want To Write?")
                    .font(.system(size: 30))
                
                
                TextField("\t Write Here",text:$myNote)
                    .frame(width: 350, height: 50)
                    .font(.system(size: 25))
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: SecondView(myC: selected, myS: myNote)){
                 Text("Save")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .font(.system(size: 25))
                        .frame(width:300, height:80)
                        .background(.green)
                        .cornerRadius(50)
                        
                    
                }
            }
        }
        .navigationTitle("Daily Diary🌱")
        
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
