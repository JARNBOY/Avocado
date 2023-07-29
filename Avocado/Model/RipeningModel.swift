//
//  RipeningModel.swift
//  Avocado
//
//  Created by Papon Supamongkonchai on 29/7/2566 BE.
//

import SwiftUI

// MARK: RIPENING MODEL

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
