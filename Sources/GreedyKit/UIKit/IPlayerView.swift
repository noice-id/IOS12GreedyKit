//
//  File.swift
//  
//
//  Created by Arsal Raza on 09/06/2023.
//

import Foundation
import UIKit
import AVFoundation

public protocol IPlayerView {
    func removeFromSuper()
    func updateBackgroundColor(color: UIColor)
    func addToView(parent: UIView)
    func preventsCapture(disableRecord: Bool)
    func updateVideoGravity(gravity: AVLayerVideoGravity)
    func setPlayer(player: AVPlayer)
    func setBounds(bounds: CGRect)
}



public final class GreedyProxy {
    static public func createPlayer() -> IPlayerView? {
        if #available(iOS 13.0, *) {
            return GreedyPlayerView()
        } else {
            return SafePlayerView()
        }
    }
}
