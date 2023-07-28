//
//  HeaderModel.swift
//  Avocado
//
//  Created by Papon Supamongkonchai on 28/7/2566 BE.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}
