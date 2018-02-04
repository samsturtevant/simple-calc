//
//  HistoryView.swift
//  simple-calc
//
//  Created by Sam Sturtevant on 2/3/18.
//  Copyright © 2018 Sam Sturtevant. All rights reserved.
//

import Foundation
import UIKit

class HistoryView: UIViewController {

    @IBOutlet weak var historyList: UIScrollView!
    
    var history: [[Int]] = []
    
    func opToString(input: [Int]) -> String {
        var s = ""
        for i in input {
            if i >= 0 {
                s.append(" " + String(i))
            } else if i == -11 {
            s.append(" +")
            } else if i == -22 {
                s.append(" -")
            } else if i == -33 {
                s.append(" *")
            } else if i == -44 {
                s.append(" /")
            } else if i == -55 {
                s.append(" %")
            } else if i == -66 {
                s.append(" AVG")
            } else if i == -77 {
                s.append(" CNT")
            } else if i == -88 {
                s.append(" FCT")
            } else if i == -99 {
                s.append(" =")
            }
        }
        return s
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyList.isScrollEnabled = true
        var i = 0
        for item in history {
            let label = UILabel(frame: CGRect(x: 20, y: 40 * i + 20, width: 300, height: 20))
            label.text = opToString(input: item)
            label.textColor = .white
            label.font = UIFont(name: "San Francisco", size: 20)
            historyList.addSubview(label)
            i = i + 1
        }
        historyList.contentSize = CGSize(width: 350, height: 40 * i + 50)
        print(historyList)
    }
    
}
