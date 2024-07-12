//
//  DynamicAttributesDetail.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DynamicAttributesDetail : Codable {
	let noiselevelrating : String?
	let automaticloadadjustment : String?
	let dryingsystem : String?
	let weightedenergyconsumptionper100cyclesforecocycle : String?
	let weightedwaterconsumptionfortheecocycle : String?
	let dishwashersize : String?
	let rinseaidindicator : String?
	let cutlerybasket : String?
	let integratedorfreestanding : String?
	let energyratingoverall : String?
	let timeremainingindicator : String?
	let noiselevel : String?
	let childlock : String?
	let timerdelay : String?
	let delicatewash : String?
	let quickwash : String?
	let modelnamenumber : String?
	let smarttechnology : String?
	let international : String?
	let brand : String?
	let cycledurationatratedcapacityfortheecocycle : String?
	let manufacturerpartnumbermpn : String?
	let truecolour : String?
	let saltlevelindicator : String?
	let homeappliancefeatures : String?
	let homearea : String?
	let noofprograms : String?
	let digitaldisplay : String?
	let floodprotection : String?
	let colour : String?
	let adjustableracking : String?
	let homeappliancetype : String?
	let crediteligibilitystatus : String?
	let programsequenceindicator : String?
	let quietmark : String?
	let slimdepth : String?
	let dryingperformance : String?
	let dimensions : String?
	let placesettings : String?

	enum CodingKeys: String, CodingKey {

		case noiselevelrating = "noiselevelrating"
		case automaticloadadjustment = "automaticloadadjustment"
		case dryingsystem = "dryingsystem"
		case weightedenergyconsumptionper100cyclesforecocycle = "weightedenergyconsumptionper100cyclesforecocycle"
		case weightedwaterconsumptionfortheecocycle = "weightedwaterconsumptionfortheecocycle"
		case dishwashersize = "dishwashersize"
		case rinseaidindicator = "rinseaidindicator"
		case cutlerybasket = "cutlerybasket"
		case integratedorfreestanding = "integratedorfreestanding"
		case energyratingoverall = "energyratingoverall"
		case timeremainingindicator = "timeremainingindicator"
		case noiselevel = "noiselevel"
		case childlock = "childlock"
		case timerdelay = "timerdelay"
		case delicatewash = "delicatewash"
		case quickwash = "quickwash"
		case modelnamenumber = "modelnamenumber"
		case smarttechnology = "smarttechnology"
		case international = "international"
		case brand = "brand"
		case cycledurationatratedcapacityfortheecocycle = "cycledurationatratedcapacityfortheecocycle"
		case manufacturerpartnumbermpn = "manufacturerpartnumbermpn"
		case truecolour = "truecolour"
		case saltlevelindicator = "saltlevelindicator"
		case homeappliancefeatures = "homeappliancefeatures"
		case homearea = "homearea"
		case noofprograms = "noofprograms"
		case digitaldisplay = "digitaldisplay"
		case floodprotection = "floodprotection"
		case colour = "colour"
		case adjustableracking = "adjustableracking"
		case homeappliancetype = "homeappliancetype"
		case crediteligibilitystatus = "crediteligibilitystatus"
		case programsequenceindicator = "programsequenceindicator"
		case quietmark = "quietmark"
		case slimdepth = "slimdepth"
		case dryingperformance = "dryingperformance"
		case dimensions = "dimensions"
		case placesettings = "placesettings"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		noiselevelrating = try values.decodeIfPresent(String.self, forKey: .noiselevelrating)
		automaticloadadjustment = try values.decodeIfPresent(String.self, forKey: .automaticloadadjustment)
		dryingsystem = try values.decodeIfPresent(String.self, forKey: .dryingsystem)
		weightedenergyconsumptionper100cyclesforecocycle = try values.decodeIfPresent(String.self, forKey: .weightedenergyconsumptionper100cyclesforecocycle)
		weightedwaterconsumptionfortheecocycle = try values.decodeIfPresent(String.self, forKey: .weightedwaterconsumptionfortheecocycle)
		dishwashersize = try values.decodeIfPresent(String.self, forKey: .dishwashersize)
		rinseaidindicator = try values.decodeIfPresent(String.self, forKey: .rinseaidindicator)
		cutlerybasket = try values.decodeIfPresent(String.self, forKey: .cutlerybasket)
		integratedorfreestanding = try values.decodeIfPresent(String.self, forKey: .integratedorfreestanding)
		energyratingoverall = try values.decodeIfPresent(String.self, forKey: .energyratingoverall)
		timeremainingindicator = try values.decodeIfPresent(String.self, forKey: .timeremainingindicator)
		noiselevel = try values.decodeIfPresent(String.self, forKey: .noiselevel)
		childlock = try values.decodeIfPresent(String.self, forKey: .childlock)
		timerdelay = try values.decodeIfPresent(String.self, forKey: .timerdelay)
		delicatewash = try values.decodeIfPresent(String.self, forKey: .delicatewash)
		quickwash = try values.decodeIfPresent(String.self, forKey: .quickwash)
		modelnamenumber = try values.decodeIfPresent(String.self, forKey: .modelnamenumber)
		smarttechnology = try values.decodeIfPresent(String.self, forKey: .smarttechnology)
		international = try values.decodeIfPresent(String.self, forKey: .international)
		brand = try values.decodeIfPresent(String.self, forKey: .brand)
		cycledurationatratedcapacityfortheecocycle = try values.decodeIfPresent(String.self, forKey: .cycledurationatratedcapacityfortheecocycle)
		manufacturerpartnumbermpn = try values.decodeIfPresent(String.self, forKey: .manufacturerpartnumbermpn)
		truecolour = try values.decodeIfPresent(String.self, forKey: .truecolour)
		saltlevelindicator = try values.decodeIfPresent(String.self, forKey: .saltlevelindicator)
		homeappliancefeatures = try values.decodeIfPresent(String.self, forKey: .homeappliancefeatures)
		homearea = try values.decodeIfPresent(String.self, forKey: .homearea)
		noofprograms = try values.decodeIfPresent(String.self, forKey: .noofprograms)
		digitaldisplay = try values.decodeIfPresent(String.self, forKey: .digitaldisplay)
		floodprotection = try values.decodeIfPresent(String.self, forKey: .floodprotection)
		colour = try values.decodeIfPresent(String.self, forKey: .colour)
		adjustableracking = try values.decodeIfPresent(String.self, forKey: .adjustableracking)
		homeappliancetype = try values.decodeIfPresent(String.self, forKey: .homeappliancetype)
		crediteligibilitystatus = try values.decodeIfPresent(String.self, forKey: .crediteligibilitystatus)
		programsequenceindicator = try values.decodeIfPresent(String.self, forKey: .programsequenceindicator)
		quietmark = try values.decodeIfPresent(String.self, forKey: .quietmark)
		slimdepth = try values.decodeIfPresent(String.self, forKey: .slimdepth)
		dryingperformance = try values.decodeIfPresent(String.self, forKey: .dryingperformance)
		dimensions = try values.decodeIfPresent(String.self, forKey: .dimensions)
		placesettings = try values.decodeIfPresent(String.self, forKey: .placesettings)
	}

}
