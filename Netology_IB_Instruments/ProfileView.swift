//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Alexander Kryuchkov on 01.05.2022.
//

import UIKit


class ProfileView: UIView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var textLabel: UITextView!

    
    var view: UIView!
    var nibName: String = "ProfileView"


    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    func loadFromNib() -> UIView {
        let bundle = Bundle(for:  type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first! as! UIView
    }

    func setup() {
        view = loadFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(view)
    }
    
}
