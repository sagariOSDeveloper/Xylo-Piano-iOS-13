import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha=0.5
        playSound(sound:sender.currentTitle!)
       let seconds = 2.0
       DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
           sender.alpha=1
       }
        
    }
    func playSound(sound:String){
        let url = Bundle.main.url(forResource:sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

