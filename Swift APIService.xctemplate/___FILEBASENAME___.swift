//___FILEHEADER___

import Foundation
import UIKit

@objc protocol ___FILEBASENAMEASIDENTIFIER___Delegate {
    <# ___FILEBASENAMEASIDENTIFIER___Delegate #>
}

class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    // Create delegate variable
    var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    static var shared = ___FILEBASENAMEASIDENTIFIER___()
    
    var apiShared = APIManager.shared
    
    private override init() {}
}

// Extension for methods
extension ___FILEBASENAMEASIDENTIFIER___ {
    <# ___FILEBASENAMEASIDENTIFIER___ #>
}
