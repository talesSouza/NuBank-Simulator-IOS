import UIKit

class LoginViewController: BaseViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var loginLabelView: LabelView!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonView: ButtonView!
    
    // MARK: - Dependencies
    var viewModel: LoginViewModel = LoginViewModel()
}

// MARK: - Life Cycle
extension LoginViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setObserver()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar(hide: false)
    }
}

// MARK: - View State
extension LoginViewController {
    
    func setObserver() {
        observe(viewModel.$state) { [weak self] state in
            guard let self = self else { return }
            self.changed(state: state)
        }
    }
    
    func changed(state: LoginViewState) {
        loginButtonView.isLoading(false)
        
        switch state {
        case .started:
            setup()
            setNavigationBarLayout()
        case .dataChanged:
            loginButtonView.isEnable(viewModel.isValidData)
        case .loading:
            loginButtonView.isLoading(true)
        case .loginFailed:
            showSimpleAlert(message: "Login falhou!")
        case .loginSucceeded:
            goToHome()
        }
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
        loginButtonView.set(title: "login.login".localized, style: .secondary)
        loginButtonView.getBordered()
        loginButtonView.isEnable(false)
        didTapButton()
    }
    
    private func setupTextFields() {
        cpfTextField.getBordered(color: .gray)
        passwordTextField.getBordered(color: .gray)
    }
    
    private func setupLabels() {
        loginLabelView.set(text: "login.doLogin".localized, textStyle: TextStyle(color: .black, size: .p18, weight: .semiBold))
    }
}

// MARK: - Private Methods
extension LoginViewController {
    
    private func didTapButton() {
        loginButtonView.set { [weak self] in
            guard let self = self else { return }
            self.viewModel.login()
        }
    }
    
    private func goToHome() {
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else { return }
        if text == cpfTextField.text {
            viewModel.set(cpf: text)
        } else if text == passwordTextField.text {
            viewModel.set(password: text)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}