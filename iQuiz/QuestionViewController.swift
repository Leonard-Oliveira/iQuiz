
import UIKit

class QuestionViewController: UIViewController {
    
    var score = 0
    var questionIndex = 0
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userScored = questions[questionIndex].rightAnswerIndex == sender.tag
        
        if userScored {
            score += 1
            sender.backgroundColor = UIColor.backgroundGreen
        } else {
            sender.backgroundColor = UIColor.backgroundRed
        }
        
        if questionIndex < questions.count-1 {
            questionIndex += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToResultViewController()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.score = score
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        setQuestion()
    }
    
    func navigateToResultViewController() {
        performSegue(withIdentifier: "navigateToResultScreen", sender: nil)
    }
    
    func setLayout() {
        navigationItem.hidesBackButton = true
        
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        
        for botao in answerButtons {
            botao.layer.cornerRadius = 12.0
        }
        
        
    }
    
    @objc func setQuestion() {
        questionTitleLabel.text = questions[questionIndex].title
        for botao in answerButtons {
            let tituloBotao = questions[questionIndex].answers[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 115/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
}
