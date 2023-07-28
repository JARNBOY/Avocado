//
//  FactModel.swift
//  Avocado
//
//  Created by Papon Supamongkonchai on 28/7/2566 BE.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}

