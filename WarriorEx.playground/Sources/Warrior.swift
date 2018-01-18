public class Warrior {
    private let mediator: Mediator
    private let name: String
    
    private var ability: FightAbility
    
    public init(_ name: String, _ mediator: Mediator){
        self.name = name
        self.mediator = mediator
        ability = Boxing()
        
        mediator.register(warrior: self)
    }
    
    public func set(ability: FightAbility){
        self.ability = ability
    }
    
    public func engage() {
        ability.attack()
    }
    
    public func send(msg: String){
        print("\(name) sent \(msg)")
        mediator.publish(msg, sender: self)
    }
    
    public func receive(_ msg: String) {
        print("\(name) got: \(msg)")
    }
    
    public func callTeamAttack(){
        mediator.launchAttack(sender: self)
        engage()
    }
}
















