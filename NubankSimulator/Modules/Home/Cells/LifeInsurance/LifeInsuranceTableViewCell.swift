import UIKit

class LifeInsuranceTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var lifeInsuranceDefaultCard: DefaultCard!
}

// MARK: - Setup
extension LifeInsuranceTableViewCell {
    
    func setup() {
        lifeInsuranceDefaultCard.set(imageName: "donation", topText: "lifeInsurance.lifeInsurance".localized, bottomText: "lifeInsurance.insuranceText".localized)
    }
}
