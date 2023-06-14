//
//  PrefecturesViewController.swift
//  Kadai11-UIKit
//
//  Created by sako0602 on 2023/06/13.
//

import UIKit

class PrefecturesViewController:UIViewController {
    
    let prefectures = Prefecture()
    
    @IBOutlet weak var prefectureTableView: UITableView!
    
    private(set) var  selectedPrefecture: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prefectureTableView.dataSource = self
        prefectureTableView.delegate = self
    }
}

extension PrefecturesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.name.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrefectureCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = prefectures.name[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}
