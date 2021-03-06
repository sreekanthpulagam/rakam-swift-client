//
// Stats.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Stats: JSONEncodable {
    public var allEvents: Int64?
    public var monthlyEvents: Int64?
    public var dailyEvents: Int64?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["allEvents"] = self.allEvents?.encodeToJSON()
        nillableDictionary["monthlyEvents"] = self.monthlyEvents?.encodeToJSON()
        nillableDictionary["dailyEvents"] = self.dailyEvents?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
