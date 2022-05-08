//
//  ContentView.swift
//  nothing
//
//  Created by Hussain Almousawi on 5/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var isShowen = false
    var body: some View {
        ZStack {
            Color.pink
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: "line.3.horizontal")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding()
                    
                    .onTapGesture {
                        withAnimation(.spring()) {
                            isShowen.toggle()
                        }
                        
                    }
                    .opacity(isShowen ? 0 : 1)
            }
            
            Color.black.edgesIgnoringSafeArea(.all)
                .opacity(isShowen ? 0.4 : 0)
        }
        .onTapGesture {
            if isShowen {
                withAnimation(.spring()) {
                    isShowen.toggle()
                }
            }
        }
        .overlay(
            HStack {
                VStack {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .onTapGesture {
                            withAnimation(.spring()) {
                                isShowen.toggle()
                            }
                        }
                    Spacer()
                    Text("meow")
                        .font(.title)
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height - 90)
                .background(Color.white)
                .cornerRadius(15)
                Spacer()
            }
                .offset(x: isShowen ? 0 : -200, y: isShowen ? 0 : 50)
                .opacity(isShowen ? 1 : 0)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
