//
//  InheritTableViewController.swift
//  TEST2
//
//  Created by WillowRivers on 2017/1/19.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import UIKit

class InheritTableViewController: UITableViewController {
    //var tableV : UITableView!  //can define your UITableView object
    var dataSource = [1,4,4,4,4,4,4,4,4,44,] ;
    override func viewDidLoad()
    {
        super.viewDidLoad() ;
        self.tableView = UITableView(frame: self.view.frame) ;
        //tableV.register(UITableViewCell.self , forCellReuseIdentifier: "CellID")//can't use this tableV register cell identifier
        self.tableView.register(UITableViewCell.self , forCellReuseIdentifier: "CellID") ;
        self.tableView.delegate = self ;
        self.tableView.dataSource = self ;
        
        self.refreshControl = UIRefreshControl() ;
        self.refreshControl?.tintColor = UIColor.blue ;
        self.refreshControl?.attributedTitle = NSAttributedString(string: "drop down to refresh") ;
        refreshControl?.addTarget(self , action: #selector(InheritTableViewController.refreshTable), for: .valueChanged) ;
    }
    
    func refreshTable()
    {
        self.dataSource = [1,3,333,33,33] ;
        self.tableView.reloadData() ;
        self.refreshControl?.endRefreshing() ;
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.dataSource.count ;
    }

    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID" , for: indexPath) ;
        
        cell.textLabel?.text = String(self.dataSource[indexPath.row]) ;

        return cell ;
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
