//
//  ViewController.swift
//  ㅇㄴㅇㄴ
//
//  Created by D7703_22 on 2019. 5. 2..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {


    @IBOutlet weak var mytableview: UITableView!
    var animal = ["Cat","Dog","Cow","pig","horse","whale"]
    var year = ["1","2","3","4","5","6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mytableview.dataSource = self
        
    }

public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return animal.count
    }
 

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = mytableview.dequeueReusableCell(withIdentifier: "Re", for:indexPath)
        let row = indexPath.row
        print("section:\(indexPath.section) row :\(indexPath.row)")
        
        cell.textLabel?.text = animal[row]
        cell.detailTextLabel?.text
        return cell
    }
}

