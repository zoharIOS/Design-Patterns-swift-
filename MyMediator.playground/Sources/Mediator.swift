public class Mediator {
    private var aircrafts: [Aircraft] = []
    
    public init(){}
    
    public func register(aircraft: Aircraft) {
        aircrafts.append(aircraft)
    }
    
    public func publish(msg: String, sender: Any){
        for ac in aircrafts {
            if ac !== sender as? Aircraft {
                ac.receive(msg)
            }
        }
    }
}
