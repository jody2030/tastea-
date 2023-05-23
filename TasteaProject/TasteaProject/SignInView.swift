//
//  LoginView.swift
//  TasteaProject
//
//  Created by Nojood Aljuaid  on 03/11/1444 AH.
//

import SwiftUI

struct SignInView : View {
    @State var username = ""
    @State var passWord = ""
    var body: some View {
        
        ZStack{
                Rectangle()
                    .fill(Color.white)
                    .frame(maxWidth: .infinity , maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                Image("img1")
                    .padding(.bottom , 690)
                
                
                VStack{
                
                    VStack{
                        
                        
                        Spacer()
                        Text("create an account")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.top , 150)
                            
                        Spacer()
                       
                            TextField("Full name" , text: $username)
                                .padding()
                                .background(Color.gray)
                                .opacity(0.1)
                                .cornerRadius(5)
                                .modifier(ShadowViewModifier())
                                .cornerRadius(20)
                       
                        
                            TextField("Email" , text: $username)
                                .padding()
                                .background(Color.gray)
                                .opacity(0.1)
                                .cornerRadius(5)
                                .modifier(ShadowViewModifier())
                                .cornerRadius(20)
                            
                            
                            TextField("Password" , text: $username)
                                .padding()
                                .background(Color.gray)
                                .opacity(0.1)
                                .cornerRadius(5)
                                .modifier(ShadowViewModifier())
                                .cornerRadius(20)
                            Spacer()
                        
                        HStack {
                            Button(action: {}, label: {
                                Spacer()
                                Text("Sign up")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 300 , height: 60)
                                    .background(Color("Color"))
                                    .cornerRadius(20)
                                    .padding(.bottom , 200)
                                
                                Spacer()
                                
                            })
                            
                        }
                        Text("Already have an account? sign in")
                            .foregroundColor(Color.black)
                       Spacer()
                        
                    }
                }.padding(30)
            }
        }
    }

struct ShadowViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(radius: 8 , x: 8 , y: 8)
            .shadow(radius: 8 , x: 8 , y: -8)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
       SignInView()
    }
}
