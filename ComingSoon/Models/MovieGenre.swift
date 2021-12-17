//
//  MovieGenre.swift
//  ComingSoon
//
//  Created by Federica Contento on 17/12/21.
//

import SwiftUI

enum MovieGenre {
    case horror
    case comedy
    case drama
    case fantasy
    case action
    
    var description: String {
        switch self {            
        case .horror:
            return "horror"
        case .drama:
            return "drama"
        case .fantasy:
            return "fantasy"
        case .action:
            return "action"
        case .comedy:
            return "comedy"
        }
    }
}
