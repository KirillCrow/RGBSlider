
import UIKit

//MARK: - View Controller
final class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var skipButton: UIButton!
    //MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColorView()
        colorView.layer.cornerRadius = 15
        skipButton.layer.cornerRadius = 15
        installationValues()
        setupSliders()
    }
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%0.2f", redSlider.value)
        updateColorView()
    }
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%0.2f", greenSlider.value)
        updateColorView()
    }
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%0.2f", blueSlider.value)
        updateColorView()
    }
    @IBAction func skipButtonAction() {
        skipToDefault()
    }
    //MARK: - Private Functions
    private func installationValues() {
        redValue.text = String(format: "%0.2f", redSlider.value)
        greenValue.text = String(format: "%0.2f", greenSlider.value)
        blueValue.text = String(format: "%0.2f", blueSlider.value)
    }
    private func setupSliders() {
        redSlider.value = 0.5
        redSlider.minimumTrackTintColor = .red
        greenSlider.value = 0.5
        greenSlider.minimumTrackTintColor = .green
        blueSlider.value = 0.5
        blueSlider.minimumTrackTintColor = .blue
    }
    private func updateColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(1))
    }
    private func skipToDefault() {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        updateColorView()
    }
}

