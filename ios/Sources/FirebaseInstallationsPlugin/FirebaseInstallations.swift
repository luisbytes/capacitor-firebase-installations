import Foundation

@objc public class FirebaseInstallations: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
