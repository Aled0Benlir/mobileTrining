//
//  ViewController.swift
//  TestNubelity
//
//  Created by Alan Benavides Lira on 27/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageContainerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Hi, My name is"
        imageContainerView.layer.cornerRadius = imageContainerView.bounds.height / 2
        imageContainerView.layer.masksToBounds = true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let apiClient = ApiClient()
        apiClient.getResponse { userResponse in
            self.imageView.getImage(from: userResponse?.results.first?.picture.medium ?? "")
            DispatchQueue.main.async {
                if let name = userResponse?.results.first?.name.fullName() {
                    self.nameLabel.text = name
                }
            }
        }
        
    }
}

