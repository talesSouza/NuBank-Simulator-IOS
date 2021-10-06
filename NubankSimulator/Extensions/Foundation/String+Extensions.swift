import UIKit

// MARK: - Computed Properties
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
