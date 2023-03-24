//
//  NetworkManager.swift
//  KnowYourCrypto (iOS)
//
//  Created by Cortana23 on 14/02/23.
//

// CoinRanking API Key: coinrankingc68c3e43a38f28740c4469c6e5226e3e598a2fb88cc12fe1
// CoinAPI API Key: BDCB534B-DAC5-4862-9BBE-BDCBEB7D494E

import Foundation

enum BaseUrls: String {
    case CoinAPI = "https://rest.coinapi.io/v1/"
    case CoinRanking = "https://api.coinranking.com/v2/"
    case CMC
}

enum RequestMethods: String {
    case POST
    case GET
}

enum EndPoints: String {
    //CoinAPI
    case exchangeRate = "exchangerate"
    case anewcase = "dhfghd"
    
    //CoinRanking
    case coins = "coins"
    //add enum dict for all params
}

enum CoinRankingCoinsParams {
    case currency
    case orderDirection
}

extension EndPoints {
    
//    var path: String {
//          switch self {
//
//          }
//       }
    
    var method: RequestMethods {
        switch self {
        case .exchangeRate:
            return .GET
        default:
            return .GET
        }
    }
    
    var parameters: [URLQueryItem]? {
          switch self {
          case .coins: //needs edit to value type
              var queryItems = [URLQueryItem]()
              queryItems.append(URLQueryItem(name: "continent", value: "continent"))
              return queryItems
          default:
             return nil
          }
       }
}

enum APIErrors: Error {
    case InvalidURL
    case DecodingError
}

extension APIErrors {
    var localizedDescription: String {
        switch self {
        case .InvalidURL:
            return "Invalid Url"
        case .DecodingError:
            return "Error in decoding"
        }
    }
}

final class APIManager {
    
    static let shared = APIManager()

    private let session = URLSession.shared
    
    func fetch<D: Decodable>(endPoint: EndPoints, service: BaseUrls) async throws -> D {
        let request = try createRequest(from: endPoint, baseUrl: service)
        
        let (data, r) = try await session.data(for: request)
        print("coin data one: \(r) and \(data)")
        return try JSONDecoder().decode(D.self, from: data)
    }
    
    private func createRequest(from endPoint: EndPoints, baseUrl: BaseUrls) throws -> URLRequest {
        guard
            let url = URL(string: (baseUrl.rawValue + endPoint.rawValue)),
            var urlComponents = URLComponents(string: url.path)
            
        else {
            throw APIErrors.InvalidURL
        }
        print("URL is: \(url)")
//        if let params = endPoint.parameters {
//            urlComponents.queryItems = params
//        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endPoint.method.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        baseUrl == .CoinAPI ?
            request.setValue("X-CoinAPI-Key", forHTTPHeaderField: "BDCB534B-DAC5-4862-9BBE-BDCBEB7D494E") :
            request.setValue("x-access-token", forHTTPHeaderField: "coinrankingc68c3e43a38f28740c4469c6e5226e3e598a2fb88cc12fe1")
        
        return request
    }
}




//https://rest.coinapi.io/v1/exchangerate/BTC/USD \
//  --request GET
//  --header "X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY"
