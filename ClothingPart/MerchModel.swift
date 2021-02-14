//
//  MerchModel.swift
//  HairyLemon
//
//  Created by Anatoliy on 28.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

protocol MerchProtocol {
    var name : String? {get}
    var id : Int? {get}
    var color : MerchColors? {get}
    var image : UIImage? {get}
}

class Clothing: MerchProtocol {
    var name: String?
    var id: Int?
    var color: MerchColors?
    var image: UIImage?
    var category: Category?
    var size: MerchSize?
}

class Merch: MerchProtocol {
    var name: String?
    var id: Int?
    var color: MerchColors?
    var image: UIImage?
}

enum MerchColors {
    case Black
    case White
    case Green
    case Yellow
}

enum Category {
    case Tshirt
    case Hoodie
    case Hats
}

enum MerchSize: String {
    case S = "S"
    case M = "M"
    case L = "L"
    case Xl = "XL"
    case Xxl = "XXL"
    case Xxxl = "XXXL"
}
