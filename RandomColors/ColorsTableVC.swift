//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Harsh Tripathi on 11/04/24.
//

import UIKit

class ColorsTableVC: UIViewController{
    var colorsArray : [UIColor] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    func addRandomColors(){
        colorsArray.append(createRandomColors());
    }
    
    func createRandomColors() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in:0...1), green: CGFloat.random(in:0...1), blue: CGFloat.random(in:0...1), alpha: CGFloat.random(in: 0...1))
        return randomColor
    }
}
extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCells")
        else{
            return UITableViewCell()
        }
        cell.backgroundColor = colorsArray[indexPath.row];
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
