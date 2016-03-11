import XCTest
import KIF

extension XCTestCase {
    
    var tester: KIFUITestActor { return tester() }
    var system: KIFSystemTestActor { return system() }
    
    //TODO: The line number is still incorrect. This should be fixed eventually.
    func tester(file : String = "\(self.dynamicType)", _ line : Int = __LINE__) -> KIFUITestActor {
        let fileName: String = "\(self.dynamicType)"
        let someArray = fileName.componentsSeparatedByString(".")
        let fileToUse = someArray.last!
        return KIFUITestActor(inFile: "\(fileToUse)", atLine: line, delegate: self)
    }

    func system(file : String = "\(self.dynamicType)", _ line : Int = __LINE__) -> KIFSystemTestActor {
        let fileName: String = "\(self.dynamicType)"
        let someArray = fileName.componentsSeparatedByString(".")
        let fileToUse = someArray.last!
        return KIFSystemTestActor(inFile: "\(fileToUse)", atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = "\(self.dynamicType)", _ line : Int = __LINE__) -> KIFUITestActor {
        let fileName: String = "\(self.dynamicType)"
        let someArray = fileName.componentsSeparatedByString(".")
        let fileToUse = someArray.last!
        return KIFUITestActor(inFile: fileToUse, atLine: line, delegate: self)
    }
    
    func system(file : String = "\(self.dynamicType)", _ line : Int = __LINE__) -> KIFSystemTestActor {
        let fileName: String = "\(self.dynamicType)"
        let someArray = fileName.componentsSeparatedByString(".")
        let fileToUse = someArray.last!
        return KIFSystemTestActor(inFile: fileToUse, atLine: line, delegate: self)
    }
}