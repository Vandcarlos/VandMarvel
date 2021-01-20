//
//  AppDelegate.swift
//  VandMarvel
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 19/01/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    private static let rootViewController = UINavigationController(rootViewController: MainViewController())

    lazy var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        setupWindow()

        return true
    }

    private func setupWindow() {
        window?.rootViewController = AppDelegate.rootViewController
        window?.makeKeyAndVisible()
    }

}

