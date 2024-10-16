//
//  QuestionAndAnswer.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 01.10.24.
//

import Foundation
import UIKit

struct Question {
    
    let text: String
    let answer: [Answer]
    
}

struct Answer {
    
    let text: String
    let correct: Bool
    
    
}
