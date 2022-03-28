//
//  WebService.swift
//  GoodNews
//
//  Created by M_931521 on 06/03/2022.
//

import Foundation

class Webservice {
    func fetchArticles(completion: @escaping ([Article]?) -> ()) {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=gb&apiKey=fc573195ef4d45ff861716105e9b684e")
        else { return }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
               
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
                
            }
        }.resume()
    }
}

//Original
//class Webservice {
//    func fetchArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
//        //force unwrapping, better to use guard let like above
//        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=uk&apiKey=fc573195ef4d45ff861716105e9b684e")!
//        
//        
//        URLSession.shared.dataTask(with: url) {data, response, error in
//            if let error = error {
//                print(error.localizedDescription)
//                completion(nil)
//            } else if let data = data {
//                print(data)
//            }
//        }.resume()
//    }
//}
