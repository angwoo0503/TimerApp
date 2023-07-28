import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }

    func configureUI() {
        mainLabel.text = "초를 선택하세요."
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        
    }
    

}

