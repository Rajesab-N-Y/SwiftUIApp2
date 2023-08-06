//
//  ContentView.swift
//  SwiftUIApp2
//
//  Created by Rajesab N Y on 24/07/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //MARK: PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: BODY

    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            }else {
                HomeView()
            }
        }
    }

}


//MARK: PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
