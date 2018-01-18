public class IONCannon: FightAbility {
    
    public static let instance = IONCannon()
    
    private init(){}
    
    public func attack() {
        print("ION-Cannon launched - BOOM")
    }
}
