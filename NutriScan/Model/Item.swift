//
//  Item.swift
//  NutriScan
//
//  Created by leonard on 2024-01-30.
//

import Foundation
import SwiftData

@Model
class Item {
    var timestamp: Date
    var foodName: String
    var brandName: String?
    var servingQty: Int?
    var servingUnit: String?
    var servingWeightGrams: Double?
    var nfMetricQty: Double?
    var nfMetricUom: String?
    var nfCalories: Double? = 0
    var nfTotalFat: Double? = 0
    var nfSaturatedFat: Double?
    var nfCholesterol: Double?
    var nfSodium: Double?
    var nfTotalCarbohydrate: Double? = 0
    var nfDietaryFiber: Double?
    var nfSugars: Double?
    var nfProtein: Double? = 0
    var nfPotassium: Double?
    var nfP: Double?

    init(timestamp: Date, foodName: String, brandName: String?, servingQty: Int?, servingUnit: String?, servingWeightGrams: Double?, nfMetricQty: Double?, nfMetricUom: String?, nfCalories: Double?, nfTotalFat: Double?, nfSaturatedFat: Double?, nfCholesterol: Double?, nfSodium: Double?, nfTotalCarbohydrate: Double?, nfDietaryFiber: Double?, nfSugars: Double?, nfProtein: Double?, nfPotassium: Double?, nfP: Double?) {
        self.timestamp = timestamp
        self.foodName = foodName
        self.brandName = brandName
        self.servingQty = servingQty
        self.servingUnit = servingUnit
        self.servingWeightGrams = servingWeightGrams
        self.nfMetricQty = nfMetricQty
        self.nfMetricUom = nfMetricUom
        self.nfCalories = nfCalories
        self.nfTotalFat = nfTotalFat
        self.nfSaturatedFat = nfSaturatedFat
        self.nfCholesterol = nfCholesterol
        self.nfSodium = nfSodium
        self.nfTotalCarbohydrate = nfTotalCarbohydrate
        self.nfDietaryFiber = nfDietaryFiber
        self.nfSugars = nfSugars
        self.nfProtein = nfProtein
        self.nfPotassium = nfPotassium
        self.nfP = nfP
    }
    
    convenience init(foodItem: FoodItem) {
        self.init(timestamp: Date(), foodName: foodItem.foodName, brandName: foodItem.brandName, servingQty: foodItem.servingQty, servingUnit: foodItem.servingUnit, servingWeightGrams: foodItem.servingWeightGrams, nfMetricQty: foodItem.nfMetricQty, nfMetricUom: foodItem.nfMetricUom, nfCalories: foodItem.nfCalories, nfTotalFat: foodItem.nfTotalFat, nfSaturatedFat: foodItem.nfSaturatedFat, nfCholesterol: foodItem.nfCholesterol, nfSodium: foodItem.nfSodium, nfTotalCarbohydrate: foodItem.nfTotalCarbohydrate, nfDietaryFiber: foodItem.nfDietaryFiber, nfSugars: foodItem.nfSugars, nfProtein: foodItem.nfProtein, nfPotassium: foodItem.nfPotassium, nfP: foodItem.nfP)
    }
    
    convenience init(from item: Item) {
        self.init(timestamp: Date(), foodName: item.foodName, brandName: item.brandName, servingQty: item.servingQty, servingUnit: item.servingUnit, servingWeightGrams: item.servingWeightGrams, nfMetricQty: item.nfMetricQty, nfMetricUom: item.nfMetricUom, nfCalories: item.nfCalories, nfTotalFat: item.nfTotalFat, nfSaturatedFat: item.nfSaturatedFat, nfCholesterol: item.nfCholesterol, nfSodium: item.nfSodium, nfTotalCarbohydrate: item.nfTotalCarbohydrate, nfDietaryFiber: item.nfDietaryFiber, nfSugars: item.nfSugars, nfProtein: item.nfProtein, nfPotassium: item.nfPotassium, nfP: item.nfP)
    }
    
    convenience init(from item: Item, timestamp: Date) {
        self.init(timestamp: timestamp, foodName: item.foodName, brandName: item.brandName, servingQty: item.servingQty, servingUnit: item.servingUnit, servingWeightGrams: item.servingWeightGrams, nfMetricQty: item.nfMetricQty, nfMetricUom: item.nfMetricUom, nfCalories: item.nfCalories, nfTotalFat: item.nfTotalFat, nfSaturatedFat: item.nfSaturatedFat, nfCholesterol: item.nfCholesterol, nfSodium: item.nfSodium, nfTotalCarbohydrate: item.nfTotalCarbohydrate, nfDietaryFiber: item.nfDietaryFiber, nfSugars: item.nfSugars, nfProtein: item.nfProtein, nfPotassium: item.nfPotassium, nfP: item.nfP)
    }
}
