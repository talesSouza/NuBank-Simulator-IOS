import Foundation

protocol LoginServiceProtocol {
    func postLogin(cpf: String, password: String, completion: @escaping ((Bool) -> Void))
}
