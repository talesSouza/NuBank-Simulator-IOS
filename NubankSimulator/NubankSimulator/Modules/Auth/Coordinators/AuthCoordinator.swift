import Foundation

class AuthCoordinator: Coordinator {

    override func start() {
        navigateToLogin()
    }
}

// MARK: - NavigateToLogin
extension AuthCoordinator {
    
    private func navigateToLogin() {
        let controller = LoginViewController()
        controller.viewModel = LoginViewModel()
        controller.goToRegisterAction = { [weak self] in
            guard let self = self else { return }
            self.navigateToRegister()
        }
        controller.loginSucceededAction = { [weak self] in
            guard let self = self else { return }
            let coordinator = HomeCoordinator(navigation: self.navigation)
            coordinator.start()
        }
        navigation.pushViewController(controller, animated: true)
    }
}

// MARK: - NavigateToRegister
extension AuthCoordinator {
    
    private func navigateToRegister() {
        // let controller = RegisterViewController()
        // ...
    }
}
