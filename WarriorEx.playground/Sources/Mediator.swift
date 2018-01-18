public class Mediator {
    private var warriors:[Warrior] = []
    
    public init(){}
    
    public func register(warrior: Warrior){
        warriors.append(warrior)
    }
    
    public func publish(_ msg: String, sender: Any){
        for w in warriors {
            if w !== sender as? Warrior {
                w.receive(msg)
            }
        }
    }
    
    public func launchAttack(sender: Any) {
        for w in warriors {
            if w !== sender as? Warrior {
                w.engage()
            }
        }
    }
}
