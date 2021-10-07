import UIKit

class HomeViewController: BaseViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var userNameLabelView: LabelView!
    @IBOutlet weak var balanceLabelView: LabelView!
    @IBOutlet weak var totalBalance: LabelView!
}

// MARK: - Life Cycle
extension HomeViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar(hide: true)
    }
}

// MARK: - Setup
extension HomeViewController {
    
    private func setup() {
        setupLabels()
    }
    
    private func setupLabels() {
        userNameLabelView.set(text: "Olá, Tales", textStyle: TextStyle(color: .white, size: .p18, weight: .semiBold))
        
        balanceLabelView.set(text: "home.account".localized, textStyle: TextStyle(color: .black, size: .p22, weight: .semiBold))
        
        totalBalance.set(text: "R$ 244.844,39", textStyle: TextStyle(color: .black, size: .p26, weight: .semiBold))
    }
}
