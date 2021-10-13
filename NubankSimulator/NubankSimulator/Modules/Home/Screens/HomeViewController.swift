import UIKit

class HomeViewController: BaseViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
}

// MARK: - Life Cycle
extension HomeViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar(hide: true)
    }
}

// MARK: - Private Methods
extension HomeViewController {
    
    private func hideSeparators(cell: UITableViewCell) {
        cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: tableView.bounds.width)
    }
}

// MARK: - UITableViewDelegate & UITableViewDataSource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        HomeCellType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cellType = HomeCellType(rawValue: indexPath.row) else { return UITableViewCell() }
        var cell: HomeCellProtocol?
        
        switch cellType {
        case .userInfo:
            if let userInfoCell = tableView.dequeueReusableCell(withIdentifier: "userInfo") as? UserInfoTableViewCell {
                cell = userInfoCell
                hideSeparators(cell: userInfoCell)
            }
        case .accountBalance:
            if let accountBalanceCell = tableView.dequeueReusableCell(withIdentifier: "accountBalance") as? AccountBalanceTableViewCell {
                cell = accountBalanceCell
                hideSeparators(cell: accountBalanceCell)
            }
        case .menuOptions:
            if let menuOptionsCell = tableView.dequeueReusableCell(withIdentifier: "collection", for: indexPath) as? CollectionTableViewCell {
                cell = menuOptionsCell
            }
        case .creditCard:
            if let creditCardCell = tableView.dequeueReusableCell(withIdentifier: "creditCard", for: indexPath) as? CreditCardTableViewCell {
                cell = creditCardCell
            }
        case .loan:
            if let loanCell = tableView.dequeueReusableCell(withIdentifier: "loan", for: indexPath) as? LoanTableViewCell {
                cell = loanCell
            }
        case .lifeInsurance:
            if let lifeInsuranceCell = tableView.dequeueReusableCell(withIdentifier: "lifeInsurance", for: indexPath) as? LifeInsuranceTableViewCell {
                cell = lifeInsuranceCell
            }
        }
        
        cell?.setup()
        return cell ?? UITableViewCell()
    }
    
    //APRENDER A SETAR UMA ALTURA PRA CADA ROW
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        guard let cellType = HomeCellType(rawValue: indexPath.row) else { return 0 }
        switch cellType {
        case .userInfo, .accountBalance, .menuOptions:
            return 140
        case .creditCard:
            return 240
        case .loan, .lifeInsurance:
            return 180
        }
    }
}
