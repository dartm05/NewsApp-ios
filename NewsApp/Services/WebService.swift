//
//  WebService.swift
//  NewsApp
//
//  Created by Daniella Arteaga on 30/12/21.
//

import Foundation

class WebService {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()){
        
        URLSession.shared.dataTask(with: url){data, response, error in
            if let error = error {
                print(error.localizedDescription)
                
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
               
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }.resume()
    }
}
