//
//  ViewController.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tbleView: UITableView!
    let item:DataSource = DataSource.init()
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       

}
    
    func numberOfSections(in tableView: UITableView) ->Int{
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.items.count
    }
    
    // MARK: DELEGATE
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //maak verwijzing naar cell in storyboard
        let currentCell:ArtistTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ArtistTableViewCell
        //product voor de juiste rij uit dataspoure halen
        let currentArtist = item.items[indexPath.row]
        //cell opvullen met product
        
        currentCell.artistLbl.text = currentArtist.artist
        currentCell.dateLbl.text = currentArtist.date
        currentCell.timeLbl.text = currentArtist.time
        currentCell.stageLbl.text = currentArtist.stage
        
        return currentCell
    }
    
    //MARK: NAVIGATION
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "detailsSegue"{
               //welke index (cell) is geselecteerd
               let selectedIndexPath:IndexPath = tbleView.indexPath(for: sender as! ArtistTableViewCell)!
               //welk product hoort bij de cell
               let selectedArtist = item.items[selectedIndexPath.row]
               //naar welk scherm gaat de navigatie
               let destinationVC:DetailArtistViewController = segue.destination as! DetailArtistViewController
               //geef effectief het product door aan het volgend sherm
               destinationVC.selectedArtist = selectedArtist
           }
       }
    
   
    
    
    

}
