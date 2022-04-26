//
//  TrainMovements.swift
//  MyTravelHelper
//
//  Created by Satish on 11/03/19.
//  Copyright © 2019 Sample. All rights reserved.
//

import Foundation

//struct TrainMovementsData: Codable {
//    var trainMovements: [TrainMovement]
//
//    enum CodingKeys: String, CodingKey {
//        case trainMovements = "objTrainMovements"
//    }
//}
//
//struct TrainMovement: Codable {
////    var trainCode: String
////    var locationCode: String
////    var locationFullName: String
////    var expDeparture:String
//    var trainCode: String
//    var trainDate: String
//    var locationCode, locationFullName, locationOrder: String
//    var locationType: String
//    var trainOrigin: String
//    var trainDestination: String
//    var scheduledArrival, scheduledDeparture, expectedArrival, expDeparture: String
//    var arrival,autoArrival, autoDepart: String
//    var stopType: String
//    var departure: Int
//
//    enum CodingKeys: String, CodingKey {
//        case trainCode = "TrainCode"
//        case locationCode = "LocationCode"
//        case locationFullName = "LocationFullName"
//        case expDeparture = "ExpectedDeparture"
//        case trainDate, locationOrder, locationType, trainOrigin, trainDestination
//        case scheduledArrival, scheduledDeparture, expectedArrival
//        case arrival, departure, autoArrival, autoDepart, stopType
//    }
//
////    init(trainCode: String, locationCode: String, locationFullName: String,expDeparture:String) {
////        self.trainCode = trainCode
////        self.locationCode = locationCode
////        self.locationFullName = locationFullName
////        self.expDeparture = expDeparture
////    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        self.trainCode = try values.decode(String.self, forKey: .trainCode)
//        self.locationCode = try values.decode(String.self, forKey: .locationCode)
//        self.locationFullName = try values.decode(String.self, forKey: .locationFullName)
//        self.departure = try values.decode(Int.self, forKey: .departure)
//        self.expDeparture = try values.decode(String.self, forKey: .expDeparture)
//        self.locationOrder = try values.decode(String.self, forKey: .locationOrder)
//        self.locationType = try values.decode(String.self, forKey: .locationType)
//        self.trainOrigin = try values.decode(String.self, forKey: .trainOrigin)
//        self.trainDestination = try values.decode(String.self, forKey: .trainDestination)
//        self.scheduledArrival = try values.decode(String.self, forKey: .scheduledArrival)
//        self.scheduledDeparture = try values.decode(String.self, forKey: .scheduledDeparture)
//        self.expectedArrival = try values.decode(String.self, forKey: .expectedArrival)
//        self.arrival = try values.decode(String.self, forKey: .arrival)
//        self.autoArrival = try values.decode(String.self, forKey: .autoArrival)
//        self.autoDepart = try values.decode(String.self, forKey: .autoDepart)
//        self.stopType = try values.decode(String.self, forKey: .stopType)
//        self.trainDate = try values.decode(String.self, forKey: .trainDate)
//        //self.init(trainCode: trainCode, locationCode: locationCode, locationFullName: locationFullName,expDeparture: departure)
//    }
//}
//

import Foundation

struct TrainMovementData: Codable {
    
    var trainMovement : [TrainMovement]? = []
    
    enum CodingKeys: String, CodingKey {
        case trainMovement = "objTrainMovements"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        trainMovement = try values.decodeIfPresent([TrainMovement].self , forKey: .trainMovement )
    }
    init() {
        
    }
    
}

import Foundation

struct TrainMovement: Codable {
    
    var trainCode: String?
    var trainDate: String?
    var locationCode: String?
    var locationFullName: String?
    var locationOrder: String?
    var locationType: String?
    var trainOrigin: String?
    var trainDestination: String?
    var scheduledArrival: String?
    var scheduledDeparture: String?
    var expectedArrival: String?
    var expectedDeparture: String?
    var arrival: String?
    var departure: String?
    var autoArrival: String?
    var autoDepart: String?
    var stopType: String?
    
    enum CodingKeys: String, CodingKey {
        
        case trainCode          = "TrainCode"
        case trainDate          = "TrainDate"
        case locationCode       = "LocationCode"
        case locationFullName   = "LocationFullName"
        case locationOrder      = "LocationOrder"
        case locationType       = "LocationType"
        case trainOrigin        = "TrainOrigin"
        case trainDestination   = "TrainDestination"
        case scheduledArrival   = "ScheduledArrival"
        case scheduledDeparture = "ScheduledDeparture"
        case expectedArrival    = "ExpectedArrival"
        case expectedDeparture  = "ExpectedDeparture"
        case arrival            = "Arrival"
        case departure          = "Departure"
        case autoArrival        = "AutoArrival"
        case autoDepart         = "AutoDepart"
        case stopType           = "StopType"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        trainCode          = try values.decodeIfPresent(String.self , forKey: .trainCode)
        trainDate          = try values.decodeIfPresent(String.self , forKey: .trainDate          )
        locationCode       = try values.decodeIfPresent(String.self , forKey: .locationCode       )
        locationFullName   = try values.decodeIfPresent(String.self , forKey: .locationFullName   )
        locationOrder      = try values.decodeIfPresent(String.self , forKey: .locationOrder      )
        locationType       = try values.decodeIfPresent(String.self , forKey: .locationType       )
        trainOrigin        = try values.decodeIfPresent(String.self , forKey: .trainOrigin        )
        trainDestination   = try values.decodeIfPresent(String.self , forKey: .trainDestination   )
        scheduledArrival   = try values.decodeIfPresent(String.self , forKey: .scheduledArrival   )
        scheduledDeparture = try values.decodeIfPresent(String.self , forKey: .scheduledDeparture )
        expectedArrival    = try values.decodeIfPresent(String.self , forKey: .expectedArrival    )
        expectedDeparture  = try values.decodeIfPresent(String.self , forKey: .expectedDeparture  )
        arrival            = try values.decodeIfPresent(String.self , forKey: .arrival            )
        departure          = try values.decodeIfPresent(String.self , forKey: .departure          )
        autoArrival        = try values.decodeIfPresent(String.self , forKey: .autoArrival        )
        autoDepart         = try values.decodeIfPresent(String.self , forKey: .autoDepart         )
        stopType           = try values.decodeIfPresent(String.self , forKey: .stopType           )
        
    }
    
    init() {
        
    }
    
}
