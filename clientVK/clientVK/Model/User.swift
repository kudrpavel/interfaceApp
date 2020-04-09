//
//  User.swift
//  clientVK
//
//  Created by paul kudryavtsev on 02.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import Foundation
import UIKit

enum maritalStatusEnum: String {
    case married = "замужем/женат"
    case single = "не женат/не замужем"
    case inSearch = "в поиске"
    case notChosen = "не выбрано"
    case meet = "встречаюсь"
    case comlicated = "все сложно"
}

enum educationEnum: String {
case higher = "высшее"
case average = "среднее"
case initial = "начальное"
}


struct User {
    var name: String
    var avatar: UIImage?
    var place: String
    var education: educationEnum
    var maritalStatus: maritalStatusEnum
    var foto: [UIImage?]
    
    func message() {
  
    }
}








