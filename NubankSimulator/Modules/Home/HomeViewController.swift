import UIKit

class HomeViewController: BaseViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var mainTableView: UITableView!
    
}

// MARK: - Life Cycle
extension HomeViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar(hide: true)
    }
}

// MARK: - Private Methods
extension HomeViewController {
    
    func registerCells() {
        mainTableView.register(AccountTableViewCell.nib(), forCellReuseIdentifier: AccountTableViewCell.identifier)
        mainTableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
    }
}

// MARK: - UITableViewDelegate & UITableViewDataSource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    //COLOCAR AS CELLS NAS ROWS
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath {
        case 1:
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "AccountTableViewCell") as! AccountTableViewCell
            return cell
        default:
            <#code#>
        }
    }
    
    
}
