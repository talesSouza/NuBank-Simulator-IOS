import UIKit
import IQKeyboardManagerSwift
import KeyValueStorage
import Resolver

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Dependencies
    @LazyInjected var storage: KeyValueStorageProtocol
    
    // MARK: - Stored Properties
    var window: UIWindow?
    var coordinator: Coordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true
        
        setupAppDependencies()
        setupCoordinator()
        setupWindow()
        
        return true
    }
}

// MARK: - Setup
extension AppDelegate {
    
    func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = coordinator?.navigation
        window?.makeKeyAndVisible()
    }
    
    func setupCoordinator() {
        let navigation = UINavigationController()
        navigation.isNavigationBarHidden = true
        coordinator = AuthCoordinator(navigation: navigation)
        coordinator?.start()
    }
    
    private func setupAppDependencies() {
        let appDependencies = AppDependencies()
        appDependencies.setup()
    }
}

//// MARK: - Launch
//extension AppDelegate {
//
//    private func setInitialViewController() {
//
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//        guard let navigation = storyboard.instantiateInitialViewController() as? UINavigationController else { return }
//        var rootViewController: UIViewController
//
//        if let isLogged: Bool = storage.get(key: .isLogged), isLogged {
//            rootViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
//        } else {
//            rootViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
//        }
//
//        navigation.viewControllers = [rootViewController]
//        setupWindow(rootViewController: navigation)
//    }
//}
