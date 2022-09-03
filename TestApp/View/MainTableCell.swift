//
//  MainTableCell.swift
//  TestApp
//
//  Created by mukul Sharma on 03/09/22.
//

import UIKit

class MainTableCell: UITableViewCell {

    
    @IBOutlet weak var lableOunces: UILabel!
    @IBOutlet weak var lableStyle: UILabel!
    @IBOutlet weak var lableIbu: UILabel!
    @IBOutlet weak var lableAbv: UILabel!
    @IBOutlet weak var lableName: UILabel!
    @IBOutlet weak var lableId: UILabel!
    @IBOutlet weak var mainView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainView.makeRoundCorner(12)
        self.mainView.backgroundColor = .random()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // setup data of cell by cell
    func managedataofcell(datatoset: MainModel)
    {
        lableId.text = (datatoset.id)?.toString()
        lableName.text = datatoset.name
        lableAbv.text = datatoset.abv
        lableIbu.text = datatoset.abv
        lableStyle.text = datatoset.style
        lableOunces.text = (datatoset.ounces)?.toString()
    }

}
