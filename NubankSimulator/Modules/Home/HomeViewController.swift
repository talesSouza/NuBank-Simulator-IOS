import UIKit

class HomeViewController: BaseViewController {
    
    // MARK: - IBOutlets
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
        hideNavigationBar(hide: false)
    }
}

// MARK: - Setup
extension HomeViewController {
    
    private func setup() {
        setupLabels()
    }
    
    private func setupLabels() {
        balanceLabelView.set(text: "home.balance".localized, textStyle: TextStyle(color: .white, size: .p20, weight: .semiBold))
        
        totalBalance.set(text: "R$ 24.844", textStyle: TextStyle(color: .white, size: .p30, weight: .bold))
        totalBalance.getBordered(width: 0.5, color: .white, radius: 3)
    }
}
