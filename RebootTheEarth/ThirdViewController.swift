//
//  ThirdViewController.swift
//  RebootTheEarth
//
//  Created by Toby Kreiman on 9/20/19.
//  Copyright © 2019 Toby Kreiman. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["John Smith", "Mohamed Salah", "Samantha Clarison", "Taylor Swift", "Guillermo Menozzi"]
    var points = [24, 17, 16, 12, 6]
    var imageNames = ["profile1", "salah", "profile2", "taylorSwift", "profile3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tabBarController?.title = "Leaderboard"
        self.navigationItem.title = "Leaderboard"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "LeaderboardCell") as! UITableViewCell
        
        if let imgView = cell.viewWithTag(1) as? UIImageView {
            imgView.image = UIImage(named: self.imageNames[indexPath.row])
            imgView.clipsToBounds = true
            imgView.layer.cornerRadius = 40
        }
        
        if let nameLabel = cell.viewWithTag(2) as? UILabel  {
            nameLabel.text = self.names[indexPath.row]
        }
        
        if let pointsLabel = cell.viewWithTag(3) as? UILabel {
            pointsLabel.text = "\(self.points[indexPath.row])"
        }
        
        if let rankingLabel = cell.viewWithTag(4) as? UILabel {
            rankingLabel.text = "\(indexPath.row + 1)."
        }
        
        
        return cell
    }
}
