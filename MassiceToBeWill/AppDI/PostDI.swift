//
//  PostDI.swift
//  MassiceToBeWill
//
//  Created by wito on 22/12/22.
//

import presentation
import domain
import data


class PostDI {
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDependencies() -> PostVM {
        
        // Data Layer
        let baseURL = appEnvironment.baseURL
        
        // Post Data Source
        let postRemoteDataSource = PostRemoteDataSource(urlString: baseURL)
        
        // Post Data Repo
        let postDataRepo = PostDataRepo(postRemoteDataSource: postRemoteDataSource)
        
        // Domain Layer
        let postInteractor = PostInteractor(postDomainRepo: postDataRepo)
        
        // Presentation
        let postVM = PostVM(postInteractor: postInteractor)
        
        return postVM
    }
}
