import SpriteKit
import GameplayKit
 
class GameScene: SKScene {
    let moneyContainer = SKSpriteNode(color: .clear, size: CGSize(width:250, height: 150))
        let dealBtn = SKSpriteNode(imageNamed: "deal_btn")
        let hitBtn = SKSpriteNode(imageNamed: "hit_btn")
        let standBtn = SKSpriteNode(imageNamed: "stand_btn")
        let money10 = Money(moneyValue: .ten)
        let money25 = Money(moneyValue: .twentyFive)
        let money50 = Money(moneyValue: .fifty)
        let instructionText = SKLabelNode(text: "Place your bet")
     
    override func didMove(to view: SKView) {
        setupTable()
        setupMoney()
        setupButtons()
    }
    
    func setupTable(){
        let table = SKSpriteNode(imageNamed: "table")
        addChild(table)
        table.position = CGPoint(x: size.width/2, y: size.height/2)
        table.zPosition = -1
        addChild(moneyContainer)
        moneyContainer.anchorPoint = CGPoint(x:0, y:0)
        moneyContainer.position = CGPoint(x:size.width/2 - 125, y:size.height/2)
        instructionText.fontColor = UIColor.black
        addChild(instructionText)
        instructionText.position = CGPoint(x: size.width/2, y: 400)
    }
    
    func setupMoney(){
            addChild(money10)
            money10.position = CGPoint(x: 75, y: 40)
             
            addChild(money25)
            money25.position = CGPoint(x:130, y:40)
             
            addChild(money50)
            money50.position = CGPoint(x: 185, y:40)
    }
    
    func setupButtons(){
        dealBtn.name = "dealBtn"
        addChild(dealBtn)
        dealBtn.position = CGPoint(x:300, y:40)
             
        hitBtn.name = "hitBtn"
        addChild(hitBtn)
        hitBtn.position = CGPoint(x:450, y:40)
        hitBtn.isHidden = true
             
        standBtn.name = "standBtn"
        addChild(standBtn)
        standBtn.position = CGPoint(x:600, y:40)
        standBtn.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
