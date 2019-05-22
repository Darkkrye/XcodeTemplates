//___FILEHEADER___

import Foundation
import UIKit

public class APIManager {
    // Singleton variables
    static var shared = APIManager()
    
    // Variables
    var headers = ["Content-Type": "application/json"]
    
    // Endpoints
    var ENDPOINT = <# Endpoint #>
    
    // Private constructor for Singleton
    private init() {}
}

// Call Requests
extension APIManager {
    func getRequest(route: String, headers: [String: String], completionHandler: @escaping ((_ statusCode: Int, _ data: Data) -> Void)) {
        var request = URLRequest(url: URL(string: route)!)
        
        request.httpMethod = HTTPMethod.GET.rawValue
        for header in headers {
            request.addValue(header.value, forHTTPHeaderField: header.key)
        }
        
        URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            if error == nil, let data = data, let realResponse = response as? HTTPURLResponse {
                completionHandler(realResponse.statusCode, data)
            } else {
                // Do something with the error
                print("Error")
                print(error ?? "Null")
            }
        }).resume()
    }
    
    func postRequest(route: String, headers: [String: String], body: Data, completionHandler: @escaping ((_ statusCode: Int, _ data: Data) -> Void)) {
        var request = URLRequest(url: URL(string: route)!)
        
        request.httpMethod = HTTPMethod.POST.rawValue
        for header in headers {
            request.addValue(header.value, forHTTPHeaderField: header.key)
        }
        
        request.httpBody = body
        
        URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            if error == nil, let data = data, let realResponse = response as? HTTPURLResponse {
                completionHandler(realResponse.statusCode, data)
            } else {
                // Do something with the error
            }
        }).resume()
    }
    
    func putRequest(route: String, headers: [String: String], body: Data, completionHandler: @escaping ((_ statusCode: Int, _ data: Data) -> Void)) {
        var request = URLRequest(url: URL(string: route)!)
        
        request.httpMethod = HTTPMethod.PUT.rawValue
        for header in headers {
            request.addValue(header.value, forHTTPHeaderField: header.key)
        }
        
        request.httpBody = body
        
        URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            if error == nil, let data = data, let realResponse = response as? HTTPURLResponse {
                completionHandler(realResponse.statusCode, data)
            } else {
                // Do something with the error
            }
        }).resume()
    }
}

enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}

// Enum for ENDPOINT routes
enum EndpointRoutes: String {
    <# EndpointRoutes #>
}
