//
//  ExerciseViewController.swift
//  finalProject
//
//  Created by Nithya Guduri on 7/1/21.
//

import UIKit

class ExerciseViewController: UIViewController {

    @IBOutlet weak var exerciseTextField: UITextField!
    @IBOutlet weak var exerciseEnterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        exerciseEnterButton.layer.cornerRadius = 6
    }
    
    func showExerciseAlert() {
        let alertController = UIAlertController(title: "Exercise Alert 🏋️‍♀️", message: "You reached the suggested amount of exercise!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default)); self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func exerciseEnterButton(_ sender: Any) {
        if let exerciseAmount = exerciseTextField.text {
            if Int(exerciseAmount) ?? 0 >= 30 {
                showExerciseAlert()
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
