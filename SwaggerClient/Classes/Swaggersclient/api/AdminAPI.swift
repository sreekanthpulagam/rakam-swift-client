//
// AdminAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AdminAPI: APIBase {
    /**
     Add fields to collections by transforming other schemas
     
     - parameter projectAddCustomFieldsToSchema: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addCustomFieldsToSchema(projectAddCustomFieldsToSchema projectAddCustomFieldsToSchema: ProjectAddCustomFieldsToSchema, completion: ((data: [SchemaField]?, error: ErrorType?) -> Void)) {
        addCustomFieldsToSchemaWithRequestBuilder(projectAddCustomFieldsToSchema: projectAddCustomFieldsToSchema).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Add fields to collections by transforming other schemas
     - POST /project/schema/add/custom
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example=[ {
  "descriptiveName" : "aeiou",
  "unique" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "type" : "aeiou",
  "category" : "aeiou"
} ]}]
     
     - parameter projectAddCustomFieldsToSchema: (body)  

     - returns: RequestBuilder<[SchemaField]> 
     */
    public class func addCustomFieldsToSchemaWithRequestBuilder(projectAddCustomFieldsToSchema projectAddCustomFieldsToSchema: ProjectAddCustomFieldsToSchema) -> RequestBuilder<[SchemaField]> {
        let path = "/project/schema/add/custom"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = projectAddCustomFieldsToSchema.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[SchemaField]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add fields to collections
     
     - parameter projectAddFieldsToSchema: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addFieldsToSchema(projectAddFieldsToSchema projectAddFieldsToSchema: ProjectAddFieldsToSchema, completion: ((data: [SchemaField]?, error: ErrorType?) -> Void)) {
        addFieldsToSchemaWithRequestBuilder(projectAddFieldsToSchema: projectAddFieldsToSchema).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Add fields to collections
     - POST /project/schema/add
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example=[ {
  "descriptiveName" : "aeiou",
  "unique" : true,
  "name" : "aeiou",
  "description" : "aeiou",
  "type" : "aeiou",
  "category" : "aeiou"
} ]}]
     
     - parameter projectAddFieldsToSchema: (body)  

     - returns: RequestBuilder<[SchemaField]> 
     */
    public class func addFieldsToSchemaWithRequestBuilder(projectAddFieldsToSchema projectAddFieldsToSchema: ProjectAddFieldsToSchema) -> RequestBuilder<[SchemaField]> {
        let path = "/project/schema/add"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = projectAddFieldsToSchema.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[SchemaField]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create API Keys
     
     - parameter projectCheckApiKeys: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func checkApiKeys(projectCheckApiKeys projectCheckApiKeys: ProjectCheckApiKeys, completion: ((data: [Bool]?, error: ErrorType?) -> Void)) {
        checkApiKeysWithRequestBuilder(projectCheckApiKeys: projectCheckApiKeys).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create API Keys
     - POST /project/check-api-keys
     - 
     - examples: [{contentType=application/json, example=[ true ]}]
     
     - parameter projectCheckApiKeys: (body)  

     - returns: RequestBuilder<[Bool]> 
     */
    public class func checkApiKeysWithRequestBuilder(projectCheckApiKeys projectCheckApiKeys: ProjectCheckApiKeys) -> RequestBuilder<[Bool]> {
        let path = "/project/check-api-keys"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = projectCheckApiKeys.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Bool]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Check lock key
     
     - parameter checkLockKey: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func checkLockKey(checkLockKey checkLockKey: CheckLockKey, completion: ((data: Bool?, error: ErrorType?) -> Void)) {
        checkLockKeyWithRequestBuilder(checkLockKey: checkLockKey).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Check lock key
     - POST /admin/lock_key
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example=true}]
     
     - parameter checkLockKey: (body)  

     - returns: RequestBuilder<Bool> 
     */
    public class func checkLockKeyWithRequestBuilder(checkLockKey checkLockKey: CheckLockKey) -> RequestBuilder<Bool> {
        let path = "/admin/lock_key"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = checkLockKey.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Bool>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get collection names
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func collections(completion: ((data: [String]?, error: ErrorType?) -> Void)) {
        collectionsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get collection names
     - POST /project/collection
     - 
     - API Key:
       - type: apiKey read_key 
       - name: read_key
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    public class func collectionsWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/project/collection"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create API Keys
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createApiKeys(completion: ((data: ProjectApiKeys?, error: ErrorType?) -> Void)) {
        createApiKeysWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create API Keys
     - POST /project/create-api-keys
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example={
  "read_key" : "aeiou",
  "master_key" : "aeiou",
  "write_key" : "aeiou"
}}]

     - returns: RequestBuilder<ProjectApiKeys> 
     */
    public class func createApiKeysWithRequestBuilder() -> RequestBuilder<ProjectApiKeys> {
        let path = "/project/create-api-keys"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProjectApiKeys>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create project
     
     - parameter createProject: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createProject(createProject createProject: CreateProject, completion: ((data: ProjectApiKeys?, error: ErrorType?) -> Void)) {
        createProjectWithRequestBuilder(createProject: createProject).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create project
     - POST /project/create
     - 
     - examples: [{contentType=application/json, example={
  "read_key" : "aeiou",
  "master_key" : "aeiou",
  "write_key" : "aeiou"
}}]
     
     - parameter createProject: (body)  

     - returns: RequestBuilder<ProjectApiKeys> 
     */
    public class func createProjectWithRequestBuilder(createProject createProject: CreateProject) -> RequestBuilder<ProjectApiKeys> {
        let path = "/project/create"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = createProject.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ProjectApiKeys>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete project
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProject(completion: ((data: SuccessMessage?, error: ErrorType?) -> Void)) {
        deleteProjectWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Delete project
     - DELETE /project/delete
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example={
  "success" : true,
  "message" : "aeiou"
}}]

     - returns: RequestBuilder<SuccessMessage> 
     */
    public class func deleteProjectWithRequestBuilder() -> RequestBuilder<SuccessMessage> {
        let path = "/project/delete"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<SuccessMessage>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List installed modules
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getConfigurations(completion: ((data: [ModuleDescriptor]?, error: ErrorType?) -> Void)) {
        getConfigurationsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List installed modules
     - GET /admin/configurations
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example=[ {
  "condition" : {
    "property" : "aeiou",
    "expectedValue" : "aeiou"
  },
  "name" : "aeiou",
  "description" : "aeiou",
  "className" : "aeiou",
  "isActive" : true,
  "properties" : [ {
    "defaultValue" : "aeiou",
    "property" : "aeiou",
    "description" : "aeiou"
  } ]
} ]}]

     - returns: RequestBuilder<[ModuleDescriptor]> 
     */
    public class func getConfigurationsWithRequestBuilder() -> RequestBuilder<[ModuleDescriptor]> {
        let path = "/admin/configurations"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[ModuleDescriptor]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List created projects
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProjects(completion: ((data: [String]?, error: ErrorType?) -> Void)) {
        getProjectsWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List created projects
     - GET /project/list
     - 
     - API Key:
       - type: apiKey read_key 
       - name: read_key
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    public class func getProjectsWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/project/list"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get project stats
     
     - parameter projectGetStats: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getStats(projectGetStats projectGetStats: ProjectGetStats, completion: ((data: [String:Stats]?, error: ErrorType?) -> Void)) {
        getStatsWithRequestBuilder(projectGetStats: projectGetStats).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get project stats
     - POST /project/stats
     - 
     - examples: [{contentType=application/json, example={
  "key" : {
    "allEvents" : 123456789,
    "monthlyEvents" : 123456789,
    "dailyEvents" : 123456789
  }
}}]
     
     - parameter projectGetStats: (body)  

     - returns: RequestBuilder<[String:Stats]> 
     */
    public class func getStatsWithRequestBuilder(projectGetStats projectGetStats: ProjectGetStats) -> RequestBuilder<[String:Stats]> {
        let path = "/project/stats"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = projectGetStats.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String:Stats]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get types
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTypes(completion: ((data: [String:String]?, error: ErrorType?) -> Void)) {
        getTypesWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get types
     - GET /admin/types
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example={
  "key" : "aeiou"
}}]

     - returns: RequestBuilder<[String:String]> 
     */
    public class func getTypesWithRequestBuilder() -> RequestBuilder<[String:String]> {
        let path = "/admin/types"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String:String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Revoke API Keys
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func revokeApiKeys(completion: ((data: SuccessMessage?, error: ErrorType?) -> Void)) {
        revokeApiKeysWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Revoke API Keys
     - DELETE /project/revoke-api-keys
     - 
     - API Key:
       - type: apiKey master_key 
       - name: master_key
     - examples: [{contentType=application/json, example={
  "success" : true,
  "message" : "aeiou"
}}]

     - returns: RequestBuilder<SuccessMessage> 
     */
    public class func revokeApiKeysWithRequestBuilder() -> RequestBuilder<SuccessMessage> {
        let path = "/project/revoke-api-keys"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<SuccessMessage>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get collection schema
     
     - parameter projectSchema: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func schema(projectSchema projectSchema: ProjectSchema, completion: ((data: [Collection]?, error: ErrorType?) -> Void)) {
        schemaWithRequestBuilder(projectSchema: projectSchema).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get collection schema
     - POST /project/schema
     - 
     - API Key:
       - type: apiKey read_key 
       - name: read_key
     - examples: [{contentType=application/json, example=[ {
  "name" : "aeiou",
  "fields" : [ {
    "descriptiveName" : "aeiou",
    "unique" : true,
    "name" : "aeiou",
    "description" : "aeiou",
    "type" : "aeiou",
    "category" : "aeiou"
  } ]
} ]}]
     
     - parameter projectSchema: (body)  

     - returns: RequestBuilder<[Collection]> 
     */
    public class func schemaWithRequestBuilder(projectSchema projectSchema: ProjectSchema) -> RequestBuilder<[Collection]> {
        let path = "/project/schema"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = projectSchema.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Collection]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
