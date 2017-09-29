

import UIKit

class ViewController: UIViewController {
    var sec = 60
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonup(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    func updateTimer(){
        sec -= 1
        time.text = "\(sec)"
        if(sec < 0){
            sec = 0
            time.text = "\(sec)"
        }
    }
    
    @IBOutlet weak var stepp: UIStepper!
    @IBAction func test(_ sender: UIStepper) {
        sec = Int(sender.value)
        time.text = "\(sec)"
    }
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetPressed(sender: UIButton) {
        // 11
        timer.invalidate()
        
        sec = 60
        
        time.text = "\(sec)"
        
    }
    
}

