//
//  TouchbleView.swift
//  TouchableDelegation
//
//  Created by Eliel A. Gordon on 10/5/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import UIKit

protocol actionInitiate: class {
    func buttonPressed()
}

extension actionInitiate where Self: UIViewController {
    func buttonPressed() {
        print("This data is passed to the view controller using the actionInitiate delegate and being printed by the view controller to here")
    }
}

class TouchbleView: UIView {
    
    var delegate: actionInitiate?
    
    let touchGesture = UITapGestureRecognizer()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        touchGesture.addTarget(self, action: #selector(handleTap(tap:)))
        
        self.addGestureRecognizer(touchGesture)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        touchGesture.addTarget(self, action: #selector(handleTap(tap:)))
        self.addGestureRecognizer(touchGesture)
        
    }
    
    // Called when view is tapped
    @objc func handleTap(tap: UITapGestureRecognizer) {
        
       delegate?.buttonPressed()
       // print("Tapped")
        
    }

}
