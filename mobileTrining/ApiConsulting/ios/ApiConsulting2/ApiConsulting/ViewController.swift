//
//  ViewController.swift
//  ApiConsulting
//
//  Created by Alan Benavides Lira on 27/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let apiClient = ApiClient()
        apiClient.getResponse { response in
            self.imageView.downloaded(from: response.image)
            DispatchQueue.main.async {
                self.imageNameLbl.text = response.name
            }
        }
    }


}

