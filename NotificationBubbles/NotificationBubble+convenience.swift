//
//  NotificationBubble+convenience.swift
//  NotificationBubbles
//
//  Created by Francisco Gindre on 1/30/19.
//

import Foundation


public extension NotificationBubble {
    public static func sucessOptions(animation: NotificationBubble.Animation) -> [NotificationBubble.Style] {
        return [ NotificationBubble.Style.animation(animation),
                 NotificationBubble.Style.margins(UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)),
            NotificationBubble.Style.cornerRadius(8),
            NotificationBubble.Style.duration(timeInterval: 5),
            NotificationBubble.Style.backgroundColor(UIColor.green)]
    }
    
    public static func errorOptions(animation: NotificationBubble.Animation) -> [NotificationBubble.Style] {
        return [ NotificationBubble.Style.animation(animation),
                 NotificationBubble.Style.margins(UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)),
                 NotificationBubble.Style.cornerRadius(8),
                 NotificationBubble.Style.duration(timeInterval: 5),
                 NotificationBubble.Style.backgroundColor(UIColor.red)]
    }
    
    public static func neutralOptions(animation: NotificationBubble.Animation) -> [NotificationBubble.Style] {
        return [ NotificationBubble.Style.animation(animation),
                 NotificationBubble.Style.margins(UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)),
                 NotificationBubble.Style.cornerRadius(8),
                 NotificationBubble.Style.duration(timeInterval: 5),
                 NotificationBubble.Style.backgroundColor(UIColor.lightGray)]
    }
}

extension UIView {
    
    func alignToSuperviewHorizontalCenter() {
        NSLayoutConstraint.activate([NSLayoutConstraint(item: self,
                                                        attribute: NSLayoutAttribute.centerXWithinMargins,
                                                        relatedBy: NSLayoutRelation.equal,
                                                        toItem: self.superview,
                                                        attribute: NSLayoutAttribute.centerXWithinMargins,
                                                        multiplier: 1,
                                                        constant: 0)])
    }
    
    func constraintTo(width: CGFloat) {
        NSLayoutConstraint.activate([NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: width)])
    }
    
    func constraintTopToSuperviewTop(constant: CGFloat) {
        NSLayoutConstraint.activate([NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal , toItem: self.superview, attribute: .top, multiplier: 1, constant: constant)])
    }
}