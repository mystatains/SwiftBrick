//
//  WebViewController.swift
//  SwiftBrick
//
//  Created by iOS on 20/11/2019.
//  Copyright © 2019 狄烨 . All rights reserved.
//

import UIKit

class WebViewController: JHWebViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        customUserAgent = "hahah"
        // Do any additional setup after loading the view.
//        addLeftBarButton(text: "as", normalColor: .black, highlightColor: .black) {
//            self.goBack()
//        }

        request = URLRequest.init(url: URL.init(string: "https://support.qq.com/product/190629")!)
        request?.httpMethod = "POST"
        request?.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        let body = "nickname=123&openid=234"
        request?.httpBody = body.data(using: .utf8)
        loadRequest()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
