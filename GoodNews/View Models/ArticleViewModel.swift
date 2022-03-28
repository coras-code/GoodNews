//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by M_931521 on 28/03/2022.
//

import Foundation

//Parent view model that consists of the single articles
struct ArticleListViewModel {
    let articles: [Article]
    
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfRowsInSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

//Presents a single article
struct ArticleViewModel {
    private let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    var description: String {
        return self.article.description
    }
    
}

//extension ArticleViewModel {
//    init(_ article: Article) {
//        self.article = article
//    }
//}
//
//extension ArticleViewModel {
//
//    var title: String {
//        return self.article.title
//    }
//    var description: String {
//        return self.article.description
//    }
//}
