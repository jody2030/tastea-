//
//  Onboarding.swift
//  TasteaProject
//
//  Created by Nojood Aljuaid  on 03/11/1444 AH.
//

import SwiftUI

struct Onboarding: View {
    @State var shouldShowOnboarding : Bool = true
    var body: some View {
        NavigationView{
            
            VStack{
                Text("you are in the main app now ")
                    .padding()
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding , content: {
            OnboardingView()
            
        })
        }
    }


struct OnboardingView : View {
    var body: some View {
        TabView{
            
            
            Image("img5")
                .padding(.bottom , 200)
            
            
            
            Image("img4")
                .padding(.bottom , 200)
            
          
            
            
           
            
        }.tabViewStyle(PageTabViewStyle())
    }
}
    struct Onboarding_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }

