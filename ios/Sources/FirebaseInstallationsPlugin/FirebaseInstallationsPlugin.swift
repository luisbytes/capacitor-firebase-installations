import Foundation
import Capacitor

import FirebaseInstallations

@objc(FirebaseInstallationsPlugin)
public class FirebaseInstallationsPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "FirebaseInstallationsPlugin"
    public let jsName = "FirebaseInstallations"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getId", returnType: CAPPluginReturnPromise)
    ]

    @objc func getId(_ call: CAPPluginCall) {
        Task {
            do {
                let id = try await Installations.installations().installationID()
                call.resolve([
                    "id": id
                ])
            } catch {
                call.reject("Id not found")
            }
        }
    }
}
