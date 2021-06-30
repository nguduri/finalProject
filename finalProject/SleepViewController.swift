//
//  SleepViewController.swift
//  finalProject
//
//  Created by Nithya Guduri on 6/30/21.
//

import UIKit

class SleepViewController: UIViewController {

    @IBOutlet weak var sleepTextField: UITextField!
    @IBOutlet weak var sleepEnterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sleepEnterButton.layer.cornerRadius = 6
    }
    
    func showSleepAlert() {
        let alertController = UIAlertController(title: "Sleep Alert 💤", message: "You reached the suggested amount of sleep!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default)); self.present(alertController, animated: true, completion: nil)
    }

    @IBAction func sleepEnterButton(_ sender: Any) {
        if let sleepAmount = sleepTextField.text {
            if Int(sleepAmount) ?? 0 >= 420 {
                showSleepAlert()
            }
        }
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
