//
//  WebService.swift
//  Crypto Currency - MVVM & SwiftUI
//
//  Created by Hamed Majdi on 2/22/24.
//

import Foundation
class WebService {

    func downloadCurrencies(url: URL, completion: @escaping (Result<[Currencies]?, DownloaderError>) -> Void){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error{
                print(error.localizedDescription)
                completion(.failure(.badURL))
            }
            
            
            guard let data = data, error == nil else{
                // this means if I don't have any data and the error is nil
                return completion(.failure(.noData))
            }
            
            
            guard let currencies = try? JSONDecoder().decode([Currencies].self, from: data) else {
                return completion(.failure(.dataParserError))
            }
            
            completion(.success(currencies))
            
        }.resume()
    }

}

// This is the error enum that I created to handle the error cases
enum DownloaderError: Error{
    case badURL
    case noData
    case dataParserError
}
