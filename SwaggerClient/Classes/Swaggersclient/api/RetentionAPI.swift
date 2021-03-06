//
// RetentionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class RetentionAPI: APIBase {
    /**
     Execute query
     
     - parameter retentionQuery: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func analyzeRetention(retentionQuery retentionQuery: RetentionQuery, completion: ((data: QueryResult?, error: ErrorType?) -> Void)) {
        analyzeRetentionWithRequestBuilder(retentionQuery: retentionQuery).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Execute query
     - POST /retention/analyze
     - 
     - API Key:
       - type: apiKey read_key 
       - name: read_key
     - examples: [{contentType=application/json, example={
  "result" : [ [ "{}" ] ],
  "metadata" : [ {
    "descriptiveName" : "aeiou",
    "unique" : true,
    "name" : "aeiou",
    "description" : "aeiou",
    "type" : "aeiou",
    "category" : "aeiou"
  } ],
  "failed" : true,
  "error" : {
    "charPositionInLine" : 123,
    "sqlState" : "aeiou",
    "errorCode" : 123,
    "message" : "aeiou",
    "errorLine" : 123
  },
  "properties" : {
    "key" : "{}"
  }
}}]
     
     - parameter retentionQuery: (body)  

     - returns: RequestBuilder<QueryResult> 
     */
    public class func analyzeRetentionWithRequestBuilder(retentionQuery retentionQuery: RetentionQuery) -> RequestBuilder<QueryResult> {
        let path = "/retention/analyze"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = retentionQuery.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<QueryResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
