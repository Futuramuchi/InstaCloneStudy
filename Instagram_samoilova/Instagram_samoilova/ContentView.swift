//
//  ContentView.swift
//  Instagram_samoilova
//
//  Created by user on 08.10.2021.
//

import SwiftUI

struct RootContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                RootView()
            }.edgesIgnoringSafeArea(.all)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootContentView()
            .previewDevice("iPhone 11")
    }
}

struct RootView: View {
    var body: some View {
        VStack {
            Image("textLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main
                        .bounds.width/2)
            NavigationLink(
                destination:
                Text("Регистрация"),
                           label: {
                            Text("Создать новый аккаунт")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.main.bounds
                                        .width/1.1, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.blue)
                                .cornerRadius(5)
                           }).navigationTitle("")
                .navigationBarBackButtonHidden(true)
                .padding(.top, 50)
            Button(action: {
                
            }, label: {
                Text("Войти")
                    .fontWeight(.semibold)
            })
            .padding(.top, 30)
        }
    }
}
