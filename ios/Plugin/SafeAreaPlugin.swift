import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(SafeAreaPlugin)
public class SafeAreaPlugin: CAPPlugin {
    private let implementation = SafeArea()
    
    @objc func getSafeAreaInsets(_ call: CAPPluginCall) {
        var top: CGFloat = 0.00,
            bottom: CGFloat = 0.00,
            right: CGFloat = 0.00,
            left: CGFloat = 0.00;
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow;
            top =  window?.safeAreaInsets.top ?? 0.00;
            bottom = window?.safeAreaInsets.bottom ?? 0.00;
            left = window?.safeAreaInsets.left ?? 0.00;
            right = window?.safeAreaInsets.right ?? 0.00;
        }
        call.resolve([
            "insets":[
                "top": top,
                "bottom": bottom,
                "right": right,
                "left": left
            ]
        ])
    }
}

