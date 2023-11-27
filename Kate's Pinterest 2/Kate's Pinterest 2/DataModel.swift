//
//  DataModel.swift
//  Kate's Pinterest 2
//
//  Created by Kate Song on 11/25/23.
//

import Foundation

struct Post {
    var title: String
    var imageURL: String
    var source: String
}

struct Folder {
    var name: String
    var posts: [Post]
}

struct DataModel {
    static var folders: [Folder] = [
        Folder(name: "All", posts: [
            Post(title: "Hoodie Cotton Clothing Women Cute Ears Lamb Velvet Cotton Fashion Loose Hoodie Warm Coat", imageURL: "bunnyhoodie", source: "Xinnzy"),
            Post(title: "Pink Flowers", imageURL: "flowers", source: "lyiem"),
            Post(title: "Glossy French Press On Nails with Yellow Star Design", imageURL: "nails2", source: "Temu"),
            Post(title: "Fashion Strawberry Sweater Coat Strawberry", imageURL: "strawberry", source: "Ibentoy"),
            Post(title: "My Melody with Headphones", imageURL: "my melody", source: ""),
            Post(title: "Pink Pumps", imageURL: "pinkheels", source: ""),
            Post(title: "Pink tulle lace short prom dress homecoming dress", imageURL: "pinkdress", source: "Little Cute"),
            Post(title: "Pink Bunny", imageURL: "pinkbunny", source: "@STARLIET"),
            Post(title: "Cute Casual Pink Outfit", imageURL: "outfit", source: ""),
            Post(title: "Kirby Icon", imageURL: "kirby", source: ""),
            
        ]),
        Folder(name: "interior", posts: [
            Post(title: "Warm Cozy Pink Room", imageURL: "pinkroom1", source: ""),
            Post(title: "Pink Room with Natural Sunlight", imageURL: "pinkroom2", source: ""),
            Post(title: "Pink Vanity", imageURL: "pinkroom3", source: ""),
            Post(title: "Warm Sunlight PinkRoom", imageURL: "pinkroom4", source: ""),
            Post(title: "Baby Pink Bed Set", imageURL: "pinkroom5", source: ""),
            Post(title: "Summer Pink Room", imageURL: "pinkroom6", source: ""),
        ]),
        Folder(name: "fashion", posts: [
            Post(title: "1pc Transparent Pink Peach Spring Hair Clp", imageURL: "peachclip", source: ""),
            Post(title: "Women's Spring Summer Casual Sneakers", imageURL: "sneakers", source: ""),
            Post(title: "Star Sky Sherpa Coat", imageURL: "jacket", source: "TALISHKO"),
            Post(title: "Pink Rose Hairband Collection", imageURL: "headbands", source: "Etsy"),
            Post(title: "Heart Pink Gel Nails", imageURL: "nails3", source: ""),
            Post(title: "Pink Pleated Skirt Outfit", imageURL: "outfit2", source: ""),
        ]),
        Folder(name: "food", posts: [
            Post(title: "Strawberry Crepe Cakes with Smoothie", imageURL: "cakes", source: ""),
            Post(title: "Japanese Strawberry Crepes", imageURL: "crepes", source: ""),
            Post(title: "Strawberry Vanilla Swirl Ice Cream", imageURL: "icecream", source: "Twitter"),
            Post(title: "Strawberry Mochi", imageURL: "mochi", source: ""),
            Post(title: "Strawberry Whipped Cream Sandwich", imageURL: "sandwich", source: ""),
            Post(title: "Chocolate Covered Pink and White Strawberries", imageURL: "strawberries", source: ""),
        ]),
    ]
}
