//
//  InterfaceController.swift
//  WatchOS2-NewUI-Movie-Example WatchKit Extension
//
//  Created by Wlad Dicario on 23/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var movieUIPlayer: WKInterfaceMovie!
    @IBOutlet var TitleLabel: WKInterfaceLabel!
    // to loop video
    let looping : Bool? = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        setUIInitialContext()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        setUIVideoComponent()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
//MARK: - Interface Controller Extension
extension InterfaceController {
    // set UI Initial context
    func setUIInitialContext() {
        self.TitleLabel.setText("Burning Man\nIn the Air!")
    }
    // set UI Video Component
    func setUIVideoComponent() {
        let url = Bundle.main.url(forResource: "burningmanbyair", withExtension: "m4v")
        let poster = WKImage(imageName: "thumbnail")
        self.movieUIPlayer.setMovieURL(url!)
        guard let isLoop = looping else { return }
        self.movieUIPlayer.setLoops(isLoop)
        self.movieUIPlayer.setPosterImage(poster)
    }
}
