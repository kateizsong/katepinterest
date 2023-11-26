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
}

struct Folder {
    var name: String
    var posts: [Post]
}

struct DataModel {
    static var folders: [Folder] = [
        Folder(name: "All", posts: [
            Post(title: "Cute Lamb Hoodie", imageURL: "bunnyhoodie"),
            Post(title: "Pink Flowers", imageURL: "flowers"),
            Post(title: "Gel Star Nails", imageURL: "nails2"),
            Post(title: "Strawberry Sweater", imageURL: "strawberry"),
            Post(title: "My Melody with Headphones", imageURL: "my melody"),
            Post(title: "Pink Pumps", imageURL: "pinkheels"),
            Post(title: "Pink Ball Gown", imageURL: "pinkdress"),
            Post(title: "Pink Bunny", imageURL: "pinkbunny"),
            Post(title: "Cute Casual Pink Outfit", imageURL: "outfit"),
            Post(title: "Kirby Icon", imageURL: "kirby"),
            
        ]),
        Folder(name: "interior", posts: [
            Post(title: "Warm Cozy Pink Room", imageURL: "pinkroom1"),
            Post(title: "Pink Room with Natural Sunlight", imageURL: "pinkroom2"),
            Post(title: "Pink Vanity", imageURL: "pinkroom3"),
            Post(title: "Warm Sunlight PinkRoom", imageURL: "pinkroom4"),
            Post(title: "Baby Pink Bed Set", imageURL: "pinkroom5"),
            Post(title: "Summer Pink Room", imageURL: "pinkroom6"),
            // Add more posts as needed
        ]),
        Folder(name: "fashion", posts: [
            Post(title: "Cute Peach Clip", imageURL: "peachclip"),
            Post(title: "Pink and White Strawberry Sneakers", imageURL: "sneakers"),
            Post(title: "Jacket with Star", imageURL: "jacket"),
            Post(title: "Pink Headband Set", imageURL: "headbands"),
            Post(title: "Heart Pink Gel Nails", imageURL: "nails3"),
            Post(title: "Pink Pleated Skirt Outfit", imageURL: "outfit2"),
        ]),
        Folder(name: "food", posts: [
            Post(title: "Strawberry Crepe Cakes with Smoothie", imageURL: "cakes"),
            Post(title: "Japanese Strawberry Crepes", imageURL: "crepes"),
            Post(title: "Strawberry Vanilla Swirl Ice Cream", imageURL: "icecream"),
            Post(title: "Strawberry Mochi", imageURL: "mochi"),
            Post(title: "Strawberry Whipped Cream Sandwich", imageURL: "sandwich"),
            Post(title: "Chocolate Covered Pink and White Strawberries", imageURL: "strawberries"),
        ]),
    ]
}
