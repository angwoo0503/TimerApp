import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }

    func configureUI() {
        mainLabel.text = "초를 선택하세요."
        slider.value = 0.5
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        // 슬라이더의 밸류값을 가지고 메인레이블의 텍스트를 세팅
        let seconds = Int(slider.value * 60)
        mainLabel.text = "\(seconds) 초"
        number = seconds
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈 때마다 무언가를 실행
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
            // 반복을 하고 싶은 코드
            
            if number > 0 {
                number -= 1
                // 슬라이더도 줄여야 됨
                // 레이블 표시도 다시 해줘야 됨
                slider.value = Float(number) / Float(60)
                mainLabel.text = "\(number) 초"
                
            } else {
                number = 0
                mainLabel.text = "초를 선택하세요."
                
                // 소리를 나게 해야됨
            }
            
            
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 초기화 셋팅
        mainLabel.text = "초를 선택하세요."
        slider.setValue(0.5, animated: true)
        // 슬라이더의 가운데 설정
        // slider.setValue(0.5, animated: true)
        
    }
    

}

