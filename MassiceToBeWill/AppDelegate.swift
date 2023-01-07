//
//  AppDelegate.swift
//  MassiceToBeWill
//
//  Created by wito on 22/12/22.
//

import Foundation
import SwiftUI



class FSAppDelegate: NSObject, UIApplicationDelegate {

  func application(
    _ application: UIApplication,
    configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
    let sceneConfig = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
    sceneConfig.delegateClass = FSSceneDelegate.self // 👈🏻
    return sceneConfig
  }
}
