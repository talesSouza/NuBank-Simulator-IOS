import UIKit

class UserInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var label: LabelView!
    
    func config() {
        label.set(text: "Olá, Tales", textStyle: TextStyle(color: .white, size: .p18))
    }

}
