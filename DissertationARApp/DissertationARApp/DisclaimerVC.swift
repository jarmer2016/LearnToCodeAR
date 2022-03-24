//
//  FirstViewController.swift
//  DissertationProject
//
//  Created by James Armer on 27/04/2021.
//

import UIKit
import SwiftUI

class FirstViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        sleep(1)
        let vc = UIHostingController(rootView: DisclaimerFile())
        vc.isModalInPresentation = true
        present(vc, animated: true)
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name("dismissSwiftUI"), object: nil, queue: nil) { (_) in
            vc.dismiss(animated: true, completion: nil)
//            //self.displayCodeViewController()
            
//            let vc1 = ViewController()
//
//            vc1.modalPresentationStyle = .fullScreen
//            vc1.modalTransitionStyle = .crossDissolve
//            self.present(vc1, animated: true, completion: nil)
            
            self.performSegue(withIdentifier: "CommandIntro", sender: nil)
            
        }

    }
    
//    func displayCodeViewController() {
//
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//
//        guard let destinationViewController = mainStoryboard.instantiateViewController(withIdentifier: "CodeViewController") as? ViewController else {
//            print("couldn't find view controller")
//            return
//        }
//
//        present(destinationViewController, animated: true)
////        navigationController?.pushViewController(destinationViewController, animated: true)
//    }
    
   
}

class SecondViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
    }

}
