//
//  ViewController.swift
//  Kadai11-UIKit
//
//  Created by sako0602 on 2023/06/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textPrefectureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func exit(segue:  UIStoryboardSegue){
            //🟨中身は何も書かない
    }
    
    @IBAction func selectedExit(segue:  UIStoryboardSegue){
        //TODO: PrefectureViewContollerから取得してきた都道府県を取得してきたい。
        if segue.identifier == "PrefectureCell" {
            if let prefectureTabelView = segue.destination as? PrefecturesViewController {
                textPrefectureLabel.text = prefectureTabelView.selectedPrefecture
            }
        } else {
            print("値なし")
        }
    }
}


