import UIKit
import Combine
//import Resolver
//import KeyValueStorage

class LoginViewModel {
    
    // MARK: - Dependecies
//    @LazyInjected var service: LoginServiceProtocol
//    @LazyInjected var storage: KeyValueStorageProtocol
    
    // MARK: Published Properties
    @Published var state: LoginViewState = .started
    
    // MARK: Stored Properties
    private var cpf: String?
    private var password: String?
}

// MARK: Sets
extension LoginViewModel {
    
    func set(cpf: String) {
        self.cpf = cpf
        state = .dataChanged
    }
    
    func set(password: String) {
        self.password = password
        state = .dataChanged
    }
}

// MARK: Computed Properties
extension LoginViewModel {
    
    var isValidData: Bool {
        guard let cpf = cpf, let password = password else { return false }
        return !cpf.isEmpty && !password.isEmpty
    }
}