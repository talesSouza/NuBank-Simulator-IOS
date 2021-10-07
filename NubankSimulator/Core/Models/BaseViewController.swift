import UIKit
import Combine

open class BaseViewController: UIViewController {
    
    // MARK: - Stored Properties
    private var cancellables: [Cancellable] = []
    
    // MARK: - Life Cycle
    deinit {
        removeObservers()
    }
}

// MARK: - Observation
extension BaseViewController {
    
    public func observe<Type>(_ publisher: Published<Type>.Publisher, action: @escaping (Type) -> Void) {
        cancellables.append(publisher.receive(on: DispatchQueue.main).sink { value in
            action(value)
        })
    }
    
    public func removeObservers() {
        cancellables.forEach { $0.cancel() }
        cancellables.removeAll()
    }
}

// MARK: - NavigationBar
extension BaseViewController {

    public func setNavigationBarLayout() {

        if let text = UIFont(name: "GillSans-Semibold", size: 16),
           let thisNavigation = self.navigationController,
           let topItem = thisNavigation.navigationBar.topItem {
            thisNavigation.navigationBar.titleTextAttributes = [
                NSAttributedString.Key.font: text,
                NSAttributedString.Key.foregroundColor: UIColor.white]

//            let yourBackImage = UIImage(named: "arrow")
//            thisNavigation.navigationBar.backIndicatorImage = yourBackImage
//            thisNavigation.navigationBar.backIndicatorTransitionMaskImage = yourBackImage

            let backButton = UIBarButtonItem()
             backButton.title = ""
             topItem.backBarButtonItem = backButton
        }
    }
    
    public func hideNavigationBar(hide: Bool) {
        guard let navigation = self.navigationController else { return }
        navigation.setNavigationBarHidden(hide, animated: true)
    }
}
