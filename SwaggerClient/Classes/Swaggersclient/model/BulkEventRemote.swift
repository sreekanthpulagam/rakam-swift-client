//
// BulkEventRemote.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BulkEventRemote: JSONEncodable {
    public enum ModelType: String { 
        case Avro = "AVRO"
        case Csv = "CSV"
        case Json = "JSON"
    }
    public enum Compression: String { 
        case Gzip = "GZIP"
    }
    public var collection: String?
    public var urls: [String]?
    public var type: ModelType?
    public var compression: Compression?
    public var options: [String:String]?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["collection"] = self.collection
        nillableDictionary["urls"] = self.urls?.encodeToJSON()
        nillableDictionary["type"] = self.type?.rawValue
        nillableDictionary["compression"] = self.compression?.rawValue
        nillableDictionary["options"] = self.options?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
