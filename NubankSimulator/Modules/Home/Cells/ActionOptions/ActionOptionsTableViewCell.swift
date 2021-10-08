import UIKit

class ActionOptionsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var roundedItem: RoundedCardItem!
    @IBOutlet weak var roundedItem2: RoundedCardItem!
    
    func config() {
        
        roundedItem.set(text: "pix", image: UIImage(named: "pix")!)
        roundedItem2.set(text: "nubank", image: UIImage(named: "nuBank")!)
    }

}
