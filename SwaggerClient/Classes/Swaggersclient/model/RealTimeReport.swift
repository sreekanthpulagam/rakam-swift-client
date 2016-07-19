//
// RealTimeReport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class RealTimeReport: JSONEncodable {
    public var name: String?
    public var measures: [Measure]?
    public var tableName: String?
    public var collections: [String]?
    public var filter: String?
    public var dimensions: [String]?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["measures"] = self.measures?.encodeToJSON()
        nillableDictionary["table_name"] = self.tableName
        nillableDictionary["collections"] = self.collections?.encodeToJSON()
        nillableDictionary["filter"] = self.filter
        nillableDictionary["dimensions"] = self.dimensions?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}