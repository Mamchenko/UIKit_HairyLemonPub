//
//  SceneDelegate.swift
//  HairyLemon
//
//  Created by Anatoliy on 30.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        
       // let barMapViewController : BarMapViewController = BarMapViewController()
            // let svc : SideMViewController = SideMViewController()
        //let loginViewController : LoginViewController = LoginViewController()
        let mainScreenVC : MainScreenVC = MainScreenVC()
        let tableViewMenuController = SlideMenuTableViewController()
       // let menu : SideMenuNavigationController = SideMenuNavigationController(rootViewController: tableViewMenuController)
       // menu.leftSide = true
          //     menu.additionalSafeAreaInsets = .zero
             //  menu.statusBarEndAlpha = 0
       // menu.menuWidth = 0.5
             //  SideMenuManager.default.leftMenuNavigationController = menu
      //  SideMenuManager.default.addPanGestureToPresent(toView: self.window!)
        
        
        
        let vc = FoodMenuCollectionViewController(size: window!.frame.size)
        let navVC  = UINavigationController(rootViewController: vc)
       // let vc = ContainerViewController()
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

