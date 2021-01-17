//
//  HTTPClient.swift
//  KooData
//
//  Created by Hamburger on 2021/1/15.
//
//
//import Foundation
//
//enum Result<T> {
//
//    case success(T)
//
//    case failure(Error)
//}
//
//enum HTTPClientError: Error {
//
//    case decodeDataFail
//
//    case clientError(Data)
//
//    case serverError
//
//    case unexpectedError
//}
//
//enum HTTPMethod: String {
//
//    case GET
//
//    case POST
//
//    case PUT
//}
//
//enum HTTPHeaderField: String {
//
//    case contentType = "Content-Type"
//
//    case auth = "Authorization"
//}
//
//enum HTTPHeaderValue: String {
//
//    case json = "application/json"
//
//}
//
//protocol Request {
//
//    var headers: [String: String] { get }
//
//    var body: Data? { get }
//
//    var method: String { get }
//
//    var endPoint: String { get }
//
//}
//
//extension Request {
//
//    func makeRequest() -> URLRequest {
//
//        let urlString = "https://graphql-pokemon2.vercel.app/"
//
//        let url = URL(string: urlString)!
//
//        var request = URLRequest(url: url)
//
//        request.allHTTPHeaderFields = headers
//
//        request.httpBody = body
//
//        request.httpMethod = method
//
//        return request
//
//    }
//
//}
//
//
//class HTTPClient {
//
//    static let shared = HTTPClient()
//
//    private let decoder = JSONDecoder()
//
//    private let encoder = JSONEncoder()
//
//    private init() { }
//
//    func request(_ request: Request, completion: @escaping (Result<Data>) -> Void
//    ) {
//        URLSession.shared.dataTask(with: Request.makeRequest(), completionHandler: { (data, response, error) in
//
//            guard error == nil else {
//
//                return completion(Result.failure(error!))
//            }
//
//            let httpResponse = response as! HTTPURLResponse
//
//            let statusCode = httpResponse.statusCode
//
//            switch statusCode {
//
//            case 200..<300:
//
//                completion(Result.success(data!))
//
//            case 400..<500:
//
//                completion(Result.failure(STHTTPClientError.clientError(data!)))
//
//            case 500..<600:
//
//                completion(Result.failure(STHTTPClientError.serverError))
//
//            default: return
//
//                completion(Result.failure(STHTTPClientError.unexpectedError))
//            }
//
//        }).resume()
//    }
//}
