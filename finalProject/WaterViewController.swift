//
//  WaterViewController.swift
//  finalProject
//
//  Created by Nithya Guduri on 6/30/21.
//

import UIKit

class WaterViewController: UIViewController {

    @IBOutlet weak var waterTextField: UITextField!
    @IBOutlet weak var waterEnterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        waterEnterButton.layer.cornerRadius = 6
    }
    
    func showWaterAlert() {
        let alertController = UIAlertController(title: "Hydration Alert 💧", message: "You reached the suggested daily water intake!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default)); self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func waterEnterButton(_ sender: Any) {
        if let waterAmount = waterTextField.text {
            if Int(waterAmount) ?? 0 >= 64 {
                showWaterAlert()
            }
        }
    }
    
    /*
    var amount = waterTextField.text
    if Int(amount) >= 64 {
        showWaterAlert()
    }
    */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



