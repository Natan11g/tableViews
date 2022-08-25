//
//  ViewController.swift
//  tableViews
//
//  Created by Natan Gluszko on 30/06/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    var dogNameList = [String]()
    var dogImageList = [UIImage]()
    
    var chosenName = ""
    var chosenImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        dogNameList.append("Shiba")
        dogNameList.append("Border Collie")
        dogNameList.append("Pug")
        dogNameList.append("Labrador")


        dogImageList.append(UIImage(named: "shibadog")!)
        dogImageList.append(UIImage(named: "bordercolliedog")!)
        dogImageList.append(UIImage(named: "pugdog")!)
        dogImageList.append(UIImage(named: "labdog")!)
    }
    

    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dogNameList.remove(at: indexPath.row)
            dogImageList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dogNameList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = dogNameList[indexPath.row]
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenName = dogNameList[indexPath.row]
        chosenImage = dogImageList[indexPath.row]
        
        performSegue(withIdentifier: "toDetailedScreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailedScreen" {
            let destinationVC = segue.destination as! InfoScreen
            destinationVC.selectedDogName = chosenName
            destinationVC.selectedDogImage = chosenImage
    }
    
}

}
