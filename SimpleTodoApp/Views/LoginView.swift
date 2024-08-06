//
//  LoginView.swift
//  SimpleTodoApp
//
//  Created by Mehmet Konukçu on 6.08.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                logoView
                
                TextField("E-Posta", text: $email)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(style: StrokeStyle(lineWidth: 1.5))
                            .foregroundStyle(.secondary)
                    )
                SecureField("Şifre", text: $password)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(style: StrokeStyle(lineWidth: 1.5))
                            .foregroundStyle(.secondary)
                    )
                Button(action: {}, label: {
                    HStack {
                        Text("Giriş Yap")
                    }
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 6))
                })
                
                Text("Buralarda yeni misin?")
                NavigationLink(destination: RegisterView(), label: {
                    Text("Hemen kayıt ol!")
                })
            }
            .padding()
        }
    }
    
    var logoView: some View {
        VStack (spacing: 10) {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Simple Todo App")
                .font(.largeTitle)
                .bold()
        }.frame(maxWidth: .infinity)
    }
}

#Preview {
    LoginView()
}
