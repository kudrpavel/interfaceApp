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
    let firstName: String
    let secondName: String
    let avatar: UIImage?
    let place: String?
    let education: educationEnum?
    let maritalStatus: maritalStatusEnum?
    let foto: [UIImage?]
    
    func message() {
  
    }
}








