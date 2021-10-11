import UIKit

class LifeInsuranceTableViewCell: UITableViewCell {

    @IBOutlet weak var lifeInsuranceDefaultCard: DefaultCard!
    
    func setup() {
        lifeInsuranceDefaultCard.set(imageName: "donation", topText: "Seguro de vida", bottomText: "Conheça Nubank Vida: um seguro simples e que \ncabe no bolso")
    }
}
