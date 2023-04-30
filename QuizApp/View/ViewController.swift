//
//  ViewController.swift
//  QuizApp
//
//  Created by Kaan Kalaycıoğlu on 26.04.2023.
//
import iOSDropDown
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var diffuculty: DropDown!
    @IBOutlet weak var categoryDropdown: DropDown!
    var index1 = 0,index2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = UIColor(hex: "#EDE8E3")
        self.view.backgroundColor = color
        self.iconLabel.font = .newFont(size: 32)
        difficultydropDown()
        categoryDropDown()
        print(self.index1)
        print(self.index2)

    }
    // I dont know how to process this functions in ViewModel section ... i need help
    func difficultydropDown() {
        
        diffuculty.optionArray = ["Easy","Mid","Hard"]
        diffuculty.optionIds = [1,2,3]
        diffuculty.didSelect { selectedText, index, id in
           
                    self.index1=id
                    print(self.index1)
            }
        }
    
    
    @IBAction func devametButtonClicked(_ sender: Any) {
     

        
        
    }
    
    func categoryDropDown() {
        categoryDropdown.optionArray = ["Celebritie","Game","Film","Müsic"]
        categoryDropdown.optionIds = [1,2,3,4]
        categoryDropdown.didSelect { selectedText, index, id in
                self.index2 = id
                print(self.index2)
        }
    }
        
    }


