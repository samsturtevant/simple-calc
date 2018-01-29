//
//  ViewController.swift
//  simple-calc
//
//  Created by Sam Sturtevant on 1/28/18.
//  Copyright © 2018 Sam Sturtevant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class Calculator {
        public func add(lhs: Int, rhs: Int) -> Int {
            return lhs + rhs;
        }
        
        public func subtract(lhs: Int, rhs: Int) -> Int {
            return lhs - rhs;
        }
        
        public func multiply(lhs: Int, rhs: Int) -> Int {
            return lhs * rhs;
        }
        
        public func divide(lhs: Int, rhs: Int) -> Int {
            return lhs / rhs;
        }
        
        public func mod(lhs: Int, rhs: Int) -> Int {
            return lhs % rhs;
        }
        
        public func avg(_ nums: [Int]) -> Int {
            let sum = nums.reduce(0, +)
            return sum / nums.count
        }
    }
    
    let calc = Calculator()
    
    var input: [Int] = []

    @IBOutlet weak var calcDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onePressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 1)
        } else {
            input.append(1)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func twoPressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 2)
        } else {
            input.append(2)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func threePressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 3)
        } else {
            input.append(3)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func fourPressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 4)
        } else {
            input.append(4)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func fivePressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 5)
        } else {
            input.append(5)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func sixPressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 6)
        } else {
            input.append(6)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func sevenPressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 7)
        } else {
            input.append(7)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func eightPressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 8)
        } else {
            input.append(8)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func ninePressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10 + 9)
        } else {
            input.append(9)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func zeroPressed(_ sender: UIButton) {
        if input.count > 0 && input.last! >= 0 {
            let n = input.last
            input.removeLast()
            input.append(n! * 10)
        } else {
            input.append(0)
        }
        calcDisplay.text = String(input.last!)
    }
    
    @IBAction func plusPressed(_ sender: UIButton) {
        input.append(-11)
        calcDisplay.text?.append(" +")
    }
    
    @IBAction func minusPressed(_ sender: UIButton) {
        input.append(-22)
        calcDisplay.text?.append(" -")
    }
    
    @IBAction func multiplyPressed(_ sender: UIButton) {
        input.append(-33)
        calcDisplay.text?.append(" *")
    }
    
    @IBAction func dividePressed(_ sender: UIButton) {
        input.append(-44)
        calcDisplay.text?.append(" /")
    }
    
    @IBAction func modPressed(_ sender: UIButton) {
        input.append(-55)
        calcDisplay.text?.append(" %")
    }
    
    @IBAction func averagePressed(_ sender: UIButton) {
        input.append(-66)
        calcDisplay.text = ("avg")
    }
    
    @IBAction func cntPressed(_ sender: UIButton) {
        input.append(-77)
        calcDisplay.text = ("count")
    }
    
    @IBAction func fctPressed(_ sender: UIButton) {
        input.append(-88)
        calcDisplay.text = ("fact")
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        input = []
        calcDisplay.text = "0"
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        if input.count == 3 && input[0] >= 0 && input[2] >= 0 {
            let op = input[1]
            if op == -11 {
                calcDisplay.text = String(calc.add(lhs: input[0], rhs: input[2]))
            } else if op == -22 {
                calcDisplay.text = String(calc.subtract(lhs: input[0], rhs: input[2]))
            } else if op == -33 {
                calcDisplay.text = String(calc.multiply(lhs: input[0], rhs: input[2]))
            } else if op == -44 {
                calcDisplay.text = String(calc.divide(lhs: input[0], rhs: input[2]))
            } else if op == -55 {
                calcDisplay.text = String(calc.mod(lhs: input[0], rhs: input[2]))
            }
        } else if input.contains(-66) {
            var nums: [Int] = []
            for n in input {
                if n >= 0 {
                    nums.append(n)
                }
            }
            calcDisplay.text = String(calc.avg(nums))
        } else if input.contains(-77) {
            var nums: [Int] = []
            for n in input {
                if n >= 0 {
                    nums.append(n)
                }
            }
            calcDisplay.text = String(nums.count)
        } else if input.contains(-88) {
            var found = false
            var num = -1
            while !found {
                num = num + 1
                if input[num] >= 0 {
                    found = true
                }
            }
            let n = input[num] + 1
            var fact: Int = 1
            for i in 1..<n{
                fact = fact * i
            }
            calcDisplay.text = String(fact)
        } else {
            calcDisplay.text = "0"
        }
        input = []
    }
    
}

