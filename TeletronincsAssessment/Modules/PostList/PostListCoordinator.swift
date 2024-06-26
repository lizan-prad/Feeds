//
//  PostListCoordinator.swift
//  TeletronincsAssessment
//
//  Created by Lizan on 15/06/2024.
//

import UIKit

class PostListCoordinator {
    private let window: UIWindow
    private var navigationController: UINavigationController?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    // Method to start the coordinator and set up the initial view
    func start() {
        // Initialize and set the LaunchViewController as the root view controller
        let launchViewController = UIStoryboard.init(name: "LaunchAnimation", bundle: nil).instantiateViewController(withIdentifier: "LaunchAnimationViewController") as! LaunchAnimationViewController
        window.rootViewController = launchViewController
        window.makeKeyAndVisible()
    }
    
    // Method to transition to the main view controller
    func transitionToMainViewController() {
        // Initialize a new navigation controller
        let navigationController = UINavigationController()
        
        // Instantiate the `PostListViewController` from storyboard
        let postListViewController = UIStoryboard(name: "PostList", bundle: nil).instantiateViewController(withIdentifier: "PostListViewController") as! PostListViewController
        
        // Initialize the view model for the `PostListViewController`
        postListViewController.viewModel = PostListViewModel()
        
        // Set the `PostListViewController` as the root view controller of the navigation controller
        navigationController.viewControllers = [postListViewController]
        
        // Transition to the main view controller
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.navigationController = navigationController
    }
}
