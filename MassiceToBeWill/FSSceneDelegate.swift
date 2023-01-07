//
//  SceneDelegate.swift
//  MassiceToBeWill
//
//  Created by wito on 22/12/22.
//

import UIKit
import SwiftUI
import presentation



class FSSceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

  func sceneWillEnterForeground(_ scene: UIScene) {
    // ...
  }

  func sceneDidBecomeActive(_ scene: UIScene) {
    // ...
  }

  func sceneWillResignActive(_ scene: UIScene) {
    // ...
  }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        

        
        let postView = PostView(postVM: AppDI.shared.postDependencies())
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: postView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
