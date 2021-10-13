import UIKit

class Coordinator {
    
    // MARK: - Stored Properties
    
    let navigation: UINavigationController
    
    // MARK: - Initializers
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() { }
}

// MARK: - Public Methods
extension Coordinator {
    
    func back() {
        navigation.popViewController(animated: true)
    }
    
    func backToRoot() {
        navigation.popToRootViewController(animated: true)
    }
}
