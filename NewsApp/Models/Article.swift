//
//  Article.swift
//  NewsApp
//
//  Created by Daniella Arteaga on 30/12/21.
//

import Foundation
struct ArticleList: Decodable {
    let articles: [Article]
}
struct Article: Decodable {
    let title: String
    let description: String
}
