public class PhoneFactory {
    public init(){}
    
    public func createPhone(_ type: String) -> Phone? {
        switch type.lowercased() {
            //supported types
            case "galaxy": return Galaxy()
            case "iphone": return iPhone()
            case "pixel": return Pixel()
            case "nexus": return Nexus()
            case "lg": return LG()
            //unsupported type
            default: return nil
        }
    }
}
