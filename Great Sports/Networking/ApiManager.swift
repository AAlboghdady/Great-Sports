//
//  ApiManager.swift
//  Great Sports
//
//  Created by Abdurrahman Alboghdady on 09/04/2022.
//

import Moya
import Alamofire

enum ApiManager {
    case players
}

// MARK: - TargetType Protocol Implementation
extension ApiManager: TargetType {
    var baseURL: URL {
        return URL(string: Constants.APIURL)!
    }
    
    var path: String {
        switch self {
        case .players:
            return "sc/players"
        }
    }
    
    var parameters: [String: Any]? {
        return [:]
    }
    
    var parameterEncoding: Moya.ParameterEncoding {
        return JSONEncoding.default
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Task {
        return .requestParameters(parameters: parameters ?? [:], encoding: URLEncoding.queryString)
    }
    
    var headers: [String: String]? {
        return [:]
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var manager: Data {
        return Data()
    }
}
