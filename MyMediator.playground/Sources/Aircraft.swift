public class Aircraft {
    private let name: String
    private let mediator: Mediator
    
    public init(_ name: String, _ mediator: Mediator) {
        self.name = name
        self.mediator = mediator
        self.mediator.register(aircraft: self)
    }
    
    public func send(msg: String) {
        print("\(name) sent: \(msg)")
        self.mediator.publish(msg: msg, sender: self)
    }
    
    public func receive(_ message: String) {
        print("\(name) received message: \(message)")
    }
}
