//
// FunnelQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FunnelQuery: JSONEncodable {
    public var steps: [FunnelStep]?
    public var dimension: String?
    public var startDate: NSDate?
    public var window: FunnelWindow?
    public var endDate: NSDate?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["steps"] = self.steps?.encodeToJSON()
        nillableDictionary["dimension"] = self.dimension
        nillableDictionary["startDate"] = self.startDate?.encodeToJSON()
        nillableDictionary["window"] = self.window?.encodeToJSON()
        nillableDictionary["endDate"] = self.endDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}