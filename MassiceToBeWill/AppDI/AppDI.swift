//
//  AppDI.swift
//  MassiceToBeWill
//
//  Created by wito on 22/12/22.
//

import Foundation
import presentation


class AppDI/*: AppDIInterface*/ {
    
    static let shared = AppDI(appEnvironment: AppEnvironment())
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDependencies() -> PostVM {
        
        let postDI: PostDI = PostDI(appEnvironment: appEnvironment)
        
        let postVM = postDI.postDependencies()
                
        return postVM
    }
    
}
