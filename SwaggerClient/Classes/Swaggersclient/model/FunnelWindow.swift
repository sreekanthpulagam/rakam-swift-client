//
// FunnelWindow.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FunnelWindow: JSONEncodable {
    public enum ModelType: String { 
        case Day = "DAY"
        case Week = "WEEK"
        case Month = "MONTH"
    }
    public var value: Int32?
    public var type: ModelType?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["value"] = self.value?.encodeToJSON()
        nillableDictionary["type"] = self.type?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
