public class CarFactory {
    public init(){}
    
    public func createCar(_ type: String) -> Car? {
        switch type.lowercased() {
            //supported types
            case "private","car": return Private()
            case "bus"          : return Bus()
            case "truck"        : return Truck()
            //unsupportd type
            default             : return nil
        }
    }
}
