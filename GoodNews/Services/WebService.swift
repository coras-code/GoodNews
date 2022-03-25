//
//  WebService.swift
//  GoodNews
//
//  Created by M_931521 on 06/03/2022.
//

import Foundation

class Webservice {
    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
      
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
            }
        }.resume()
    }
}
