//
// UserCreateSegment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserCreateSegment: JSONEncodable {
    public var name: String?
    public var tableName: String?
    public var filterExpression: String?
    public var eventFilters: [EventFilter]?
    public var cacheEviction: String?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["table_name"] = self.tableName
        nillableDictionary["filter_expression"] = self.filterExpression
        nillableDictionary["event_filters"] = self.eventFilters?.encodeToJSON()
        nillableDictionary["cache_eviction"] = self.cacheEviction
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
