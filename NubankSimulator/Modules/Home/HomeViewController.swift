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
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func hideSeparators(cell: UITableViewCell) {
        cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: tableView.bounds.width)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "userInfo") as! UserInfoTableViewCell
            cell.config()
            hideSeparators(cell: cell)
            return cell
        } else if indexPath.row < 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "accountBalance") as! AccountBalanceTableViewCell
            cell.config()
            hideSeparators(cell: cell)
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "collection", for: indexPath) as! CollectionTableViewCell
        cell.reloadCollectionView()
        hideSeparators(cell: cell)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
    
    
}
