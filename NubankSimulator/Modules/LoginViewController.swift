import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var loginLabelView: LabelView!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: ButtonView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Setup
extension LoginViewController {
    
    private func setup() {
        setupButtons()
        setupLabels()
        setupTextFields()
    }
    
    private func setupButtons() {
        loginButton.set(title: "login.login".localized, style: .secondary)
        loginButton.getBordered()
        loginButton.isEnable(false)
    }
    
    private func setupTextFields() {
        cpfTextField.getBordered(color: .gray)
        passwordTextField.getBordered(color: .gray)
    }
    
    private func setupLabels() {
        loginLabelView.set(text: "login.doLogin".localized, textStyle: TextStyle(color: .black, size: .p18, weight: .semiBold))
        loginLabelView.backgroundColor = .clear
    }
}

// MARK: - Actions
extension LoginViewController {
    
    private func setActions() {
        
    }
    
}

//PROXIMO PASSO É FAZER O SERVICE PRO LOGIN
