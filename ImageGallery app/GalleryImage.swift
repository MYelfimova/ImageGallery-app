//
//  GalleryImage.swift
//  ImageGallery app
//
//  Created by Maria Yelfimova on 8/2/20.
//  Copyright © 2020 Maria Yelfimova. All rights reserved.
//

import Foundation

struct GalleryImages {
    
    static var imageUrls = [
        "fistrImage": "1.jpg",
        "secondImage": "2.jpg",
        "thirdImage": "3.jpg",
        "forthImage": "4.jpg",
        "fifthImage": "5.jpg",
        "sixthImage": "6.jpg",
        "seventhImage": "7.jpg"
    ]
    
    static var imageNames: [String] { return Array(imageUrls.keys) }
    static var images: [String?] { return Array(imageUrls.values) }
//    static var all: [String] { return food.flatMap { $0.value } }
        
}
