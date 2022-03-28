//
//  Article.swift
//  GoodNews
//
//  Created by M_931521 on 25/03/2022.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
    
}

struct Article: Decodable {
    let title: String
    let description: String
}

