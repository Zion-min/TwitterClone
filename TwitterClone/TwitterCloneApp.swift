//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by 민시온 on 2023/05/09.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
//                ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}
 
