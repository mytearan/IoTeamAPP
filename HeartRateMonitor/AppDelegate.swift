/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

@available(iOS 13.0, *)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  @available(iOS 13.0, *)
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    /* self.window = UIWindow(frame: UIScreen.main.bounds)
    if let window = self.window {
        window.backgroundColor = UIColor.white
        let nav = UINavigationController()
        let mainView = ViewController()
        nav.viewControllers = [mainView]
        window.rootViewController = nav
        window.makeKeyAndVisible()
    } */
    
    // Override point for customization after application launch.
    // add these lines
    /*
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    // if user is logged in before
    if UserDefaults.standard.string(forKey: "username") != nil {
        // instantiate the main tab bar controller and set it as root view controller
        // using the storyboard identifier we set earlier
        let mainTabBarController = storyboard.instantiateViewController(identifier: "MainTabBarController")
        window?.rootViewController = mainTabBarController
    } else {
        // if user isn't logged in
        // instantiate the navigation controller and set it as root view controller
        // using the storyboard identifier we set earlier
        let loginNavController = storyboard.instantiateViewController(identifier: "SwiftUIViewHostingController")
        window?.rootViewController = loginNavController
    }
    */
    return true
  }
  /*
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }

    #if targetEnvironment(macCatalyst)
    windowScene.titlebar?.titleVisibility = .hidden
    #endif
    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = UINavigationController(rootViewController: ItemListViewController())
    window?.makeKeyAndVisible()
  } */
/*
  func changeRootViewController(_ vc: UIViewController, animated: Bool = true) {
      guard let window = self.window else {
          return
      }
      
      // change the root view controller to your specific view controller
      window.rootViewController = vc
  } */
}
