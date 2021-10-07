import Foundation

class LoginService: LoginServiceProtocol {
    func postLogin(cpf: String, password: String, completion: @escaping ((Bool) -> Void)) {
        
        let seconds = 1.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion(true)
        }
    }
}
