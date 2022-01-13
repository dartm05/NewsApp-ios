//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by Daniella Arteaga on 30/12/21.
//

import Foundation

struct ArticleListViewModel{
    let articles : [Article]
}
struct ArticleViewModel {
    private let article: Article
}

extension ArticleListViewModel{
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    func articleAtIndex(_ index: Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

extension ArticleViewModel {
    
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String {
        return self.article.title
    }
    var description: String {
        return self.article.description
    }
}
