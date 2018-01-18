public class Singy {
    //instance variable
    public var name = "Singy A"
    
    //stored Singy class instance
    private static var instance: Singy?
    
    //to prevent instantiation from outside
    private init() {}
    
    //not thread safe
    public static func getInstance() -> Singy {
        //if not existsfrom
        if Singy.instance == nil {
            //create & store statically
            Singy.instance = Singy()
        }
        
        //return to caller
        return Singy.instance!
    }
    
    //with property
//    public static var Instance : Singy {
//        if Singy.instance == nil {
//            //create & store statically
//            Singy.instance = Singy()
//        }
//
//        //return to caller
//        return Singy.instance!
//    }
}
