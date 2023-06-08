//
//  GreedyPlayerView.swift
//  GreedyKit
//
//  Created by Igor Belov on 05.09.2022.
//

import UIKit
import Combine
import AVFoundation

public final class SafePlayerView: AVPlayerLayer, IPlayerView {
    
    public override init() {
        super.init()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func removeFromSuper() {
        self.removeFromSuperlayer()
    }
    
    public func updateBackgroundColor(color: UIColor) {
        backgroundColor = color.cgColor
    }
    
    public func addToView(parent: UIView) {
        parent.layer.addSublayer(self)
    }
    
    public func preventsCapture(disableRecord: Bool) {
        // do nothing
    }
    
    public func updateVideoGravity(gravity: AVLayerVideoGravity) {
        videoGravity = gravity
    }
    
    public func setPlayer(player: AVPlayer) {
        self.player = player
    }
}
