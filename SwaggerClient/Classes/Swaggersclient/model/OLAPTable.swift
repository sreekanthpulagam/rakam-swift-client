//
// OLAPTable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OLAPTable: JSONEncodable {
    public enum [Aggregations]: String { 
    }
    public var collections: [String]
    public var dimensions: [String]
    public var aggregations: [Aggregations]
    public var measures: [String]
    public var tableName: String

    public init(collections: [String], dimensions: [String], aggregations: [Aggregations], measures: [String], tableName: String) {
        self.collections = collections
        self.dimensions = dimensions
        self.aggregations = aggregations
        self.measures = measures
        self.tableName = tableName
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["collections"] = self.collections.encodeToJSON()
        nillableDictionary["dimensions"] = self.dimensions.encodeToJSON()
        nillableDictionary["aggregations"] = self.aggregations.encodeToJSON()
        nillableDictionary["measures"] = self.measures.encodeToJSON()
        nillableDictionary["tableName"] = self.tableName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
