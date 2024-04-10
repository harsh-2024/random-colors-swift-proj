//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Harsh Tripathi on 11/04/24.
//

import UIKit

class ColorsTableVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
