//
//  Group.swift
//  clientVK
//
//  Created by paul kudryavtsev on 02.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit


class Group {
    let name: String!
    let avatar: UIImage?

    init(_ name: String, avatar: UIImage?) {
        self.name = name
        self.avatar = avatar
    }
}

extension Group: Equatable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        return
            lhs.name == rhs.name &&
            lhs.avatar == rhs.avatar
    }
}
