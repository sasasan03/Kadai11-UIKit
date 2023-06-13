//
//  PrefecturesViewController.swift
//  Kadai11-UIKit
//
//  Created by sako0602 on 2023/06/13.
//

import UIKit

class PrefecturesViewController:UIViewController {
    
    let prefectures = Prefecture()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension PrefecturesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.name.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = prefectures.name[indexPath.row]
//        print("選ばれた都道府県は",content.text)
        cell.contentConfiguration = content
        return cell
    }

}
