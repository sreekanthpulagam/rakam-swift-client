//
// ExportQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ExportQuery: JSONEncodable {
    public enum ExportType: String { 
        case Avro = "AVRO"
        case Csv = "CSV"
        case Json = "JSON"
    }
    /** SQL query that will be executed on data-set */
    public var query: String?
    public var limit: Int32?
    public var exportType: ExportType?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["query"] = self.query
        nillableDictionary["limit"] = self.limit?.encodeToJSON()
        nillableDictionary["exportType"] = self.exportType?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}