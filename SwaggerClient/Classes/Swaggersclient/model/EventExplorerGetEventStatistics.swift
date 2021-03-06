//
// EventExplorerGetEventStatistics.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class EventExplorerGetEventStatistics: JSONEncodable {
    public var collections: [String]?
    public var dimension: String?
    public var startDate: NSDate?
    public var endDate: NSDate?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["collections"] = self.collections?.encodeToJSON()
        nillableDictionary["dimension"] = self.dimension
        nillableDictionary["startDate"] = self.startDate?.encodeToJSON()
        nillableDictionary["endDate"] = self.endDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
