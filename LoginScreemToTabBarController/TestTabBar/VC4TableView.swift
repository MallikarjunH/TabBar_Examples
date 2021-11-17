//
//  VC4TableView.swift
//  TestTabBar
//
//  Created by ADDA on 05/02/20.
//  Copyright © 2020 ADDA. All rights reserved.
//

import UIKit

class VC4TableView: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTableVIewCell", for: indexPath) as! SampleTableVIewCell
        cell.selectionStyle = UITableViewCell.SelectionStyle.none;
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 75.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let details = self.storyboard!.instantiateViewController(withIdentifier: "VC5") as? VC5
      //  slotsDetails?.tileString = boookingFacilitiesNameArray[indexPath.row]
        
        if (navigationController?.topViewController is VC5) {
            return
        } else {
            navigationController?.pushViewController(details!, animated: true)
        }
    }
    
    //VC5
    /*  let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "IKDetailVC") as? IKDetailVC
     self.navigationController?.pushViewController(vc!, animated: true)
     */

}
