// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let catResponseModel = try? newJSONDecoder().decode(CatResponseModel.self, from: jsonData)

import Foundation

// MARK: - CatResponseModelElement
struct CatResponseModelElement: Codable {
    let weight: Weight1
    let id, name: String
    let cfaURL: String?
    let vetstreetURL: String?
    let vcahospitalsURL: String?
    let temperament, origin, countryCodes, countryCode: String
    let catResponseModelDescription, lifeSpan: String
    let indoor: Int
    let lap: Int?
    let altNames: String
    let adaptability, affectionLevel, childFriendly, dogFriendly: Int
    let energyLevel, grooming, healthIssues, intelligence: Int
    let sheddingLevel, socialNeeds, strangerFriendly, vocalisation: Int
    let experimental, hairless, natural, rare: Int
    let rex, suppressedTail, shortLegs: Int
    let wikipediaURL: String
    let hypoallergenic: Int
    let referenceImageID: String?
    let image: Image1?

    enum CodingKeys: String, CodingKey {
        case weight, id, name
        case cfaURL = "cfa_url"
        case vetstreetURL = "vetstreet_url"
        case vcahospitalsURL = "vcahospitals_url"
        case temperament, origin
        case countryCodes = "country_codes"
        case countryCode = "country_code"
        case catResponseModelDescription = "description"
        case lifeSpan = "life_span"
        case indoor, lap
        case altNames = "alt_names"
        case adaptability
        case affectionLevel = "affection_level"
        case childFriendly = "child_friendly"
        case dogFriendly = "dog_friendly"
        case energyLevel = "energy_level"
        case grooming
        case healthIssues = "health_issues"
        case intelligence
        case sheddingLevel = "shedding_level"
        case socialNeeds = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case vocalisation, experimental, hairless, natural, rare, rex
        case suppressedTail = "suppressed_tail"
        case shortLegs = "short_legs"
        case wikipediaURL = "wikipedia_url"
        case hypoallergenic
        case referenceImageID = "reference_image_id"
        case image
    }
}

// MARK: - Image
struct Image1: Codable {
    let id: String?
    let width, height: Int?
    let url: String?
}

// MARK: - Weight
struct Weight1: Codable {
    let imperial, metric: String
}

typealias CatItems = [CatResponseModelElement]




// MARK: - CatResponseItemModelElement
class CatResponseItemModelElement: Codable {
    let weight: Weight
    let id, name, temperament, origin: String
    let countryCodes, countryCode, catResponseItemModelDescription, lifeSpan: String
    let indoor: Int
    let altNames: String?
    let adaptability, affectionLevel, childFriendly, dogFriendly: Int
    let energyLevel, grooming, healthIssues, intelligence: Int
    let sheddingLevel, socialNeeds, strangerFriendly, vocalisation: Int
    let experimental, hairless, natural, rare: Int
    let rex, suppressedTail, shortLegs: Int
    let wikipediaURL: String?
    let hypoallergenic: Int
    let referenceImageID: String?
    let image: Image?
    let cfaURL: String?
    let vcahospitalsURL: String?
    let lap, catFriendly, bidability: Int?
    let vetstreetURL: String?

    enum CodingKeys: String, CodingKey {
        case weight, id, name, temperament, origin
        case countryCodes = "country_codes"
        case countryCode = "country_code"
        case catResponseItemModelDescription = "description"
        case lifeSpan = "life_span"
        case indoor
        case altNames = "alt_names"
        case adaptability
        case affectionLevel = "affection_level"
        case childFriendly = "child_friendly"
        case dogFriendly = "dog_friendly"
        case energyLevel = "energy_level"
        case grooming
        case healthIssues = "health_issues"
        case intelligence
        case sheddingLevel = "shedding_level"
        case socialNeeds = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case vocalisation, experimental, hairless, natural, rare, rex
        case suppressedTail = "suppressed_tail"
        case shortLegs = "short_legs"
        case wikipediaURL = "wikipedia_url"
        case hypoallergenic
        case referenceImageID = "reference_image_id"
        case image
        case cfaURL = "cfa_url"
        case vcahospitalsURL = "vcahospitals_url"
        case lap
        case catFriendly = "cat_friendly"
        case bidability
        case vetstreetURL = "vetstreet_url"
    }

    init(weight: Weight, id: String, name: String, temperament: String, origin: String, countryCodes: String, countryCode: String, catResponseItemModelDescription: String, lifeSpan: String, indoor: Int, altNames: String?, adaptability: Int, affectionLevel: Int, childFriendly: Int, dogFriendly: Int, energyLevel: Int, grooming: Int, healthIssues: Int, intelligence: Int, sheddingLevel: Int, socialNeeds: Int, strangerFriendly: Int, vocalisation: Int, experimental: Int, hairless: Int, natural: Int, rare: Int, rex: Int, suppressedTail: Int, shortLegs: Int, wikipediaURL: String?, hypoallergenic: Int, referenceImageID: String?, image: Image?, cfaURL: String?, vcahospitalsURL: String?, lap: Int?, catFriendly: Int?, bidability: Int?, vetstreetURL: String?) {
        self.weight = weight
        self.id = id
        self.name = name
        self.temperament = temperament
        self.origin = origin
        self.countryCodes = countryCodes
        self.countryCode = countryCode
        self.catResponseItemModelDescription = catResponseItemModelDescription
        self.lifeSpan = lifeSpan
        self.indoor = indoor
        self.altNames = altNames
        self.adaptability = adaptability
        self.affectionLevel = affectionLevel
        self.childFriendly = childFriendly
        self.dogFriendly = dogFriendly
        self.energyLevel = energyLevel
        self.grooming = grooming
        self.healthIssues = healthIssues
        self.intelligence = intelligence
        self.sheddingLevel = sheddingLevel
        self.socialNeeds = socialNeeds
        self.strangerFriendly = strangerFriendly
        self.vocalisation = vocalisation
        self.experimental = experimental
        self.hairless = hairless
        self.natural = natural
        self.rare = rare
        self.rex = rex
        self.suppressedTail = suppressedTail
        self.shortLegs = shortLegs
        self.wikipediaURL = wikipediaURL
        self.hypoallergenic = hypoallergenic
        self.referenceImageID = referenceImageID
        self.image = image
        self.cfaURL = cfaURL
        self.vcahospitalsURL = vcahospitalsURL
        self.lap = lap
        self.catFriendly = catFriendly
        self.bidability = bidability
        self.vetstreetURL = vetstreetURL
    }
}

// MARK: - Image
class Image: Codable {
    let id: String
    let width, height: Int
    let url: String

    init(id: String, width: Int, height: Int, url: String) {
        self.id = id
        self.width = width
        self.height = height
        self.url = url
    }
}

// MARK: - Weight
class Weight: Codable {
    let imperial, metric: String

    init(imperial: String, metric: String) {
        self.imperial = imperial
        self.metric = metric
    }
}

typealias CatResponseItemModel = [CatResponseItemModelElement]

