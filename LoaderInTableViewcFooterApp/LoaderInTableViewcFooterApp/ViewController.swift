//
//  ViewController.swift
//  LoaderInTableViewcFooterApp
//
//  Created by Shailendra Kumar Ram on 2/21/20.
//  Copyright © 2020 Nitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    var numbers = ["90","91","92","93","94","95","96","97","98","99","100","90","91","92","93","94","95","96","97","98","99","100","90","91","92","93","94","95"]
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.numbers.count
        
          }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as!
                TableViewCell
              cell.textLabel?.text = self.numbers[indexPath.row] 
            return cell
       
        }
        
        func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            let lastSectionIndex = tableView.numberOfSections - 1
            let lastRowIndex = tableView.numberOfRows(inSection: lastSectionIndex) - 1
            if indexPath.section ==  lastSectionIndex && indexPath.row == lastRowIndex  {
                let spinner = UIActivityIndicatorView()
                spinner.frame = CGRect(x: 0.0, y: 0.0, width: tableView.bounds.width, height: 50)
                 let loadingTextLabel = UILabel()
               // loadingTextLabel.textColor = UIColor.black
                loadingTextLabel.text = "LOADING"
                loadingTextLabel.font = UIFont(name: "Avenir Light", size: 150)
                loadingTextLabel.sizeToFit()
                loadingTextLabel.textColor  = UIColor.red
                loadingTextLabel.center = CGPoint(x: spinner.center.x, y: spinner.center.y + 60)
                spinner.startAnimating()
                tableView.tableFooterView = spinner
                tableView.backgroundColor = .blue
                }

    }
            


}

