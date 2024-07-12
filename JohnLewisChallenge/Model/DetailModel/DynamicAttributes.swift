//
//  DynamicAttributes.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DynamicAttributes : Codable {
	let noiselevelrating : String?
	let timeremainingindicator : String?
	let weightedenergyconsumptionper100cyclesforecocycle : String?
	let integratedorfreestanding : String?
//	let smarttechnology : String?
	let cutlerybasket : String?
	let dishwashersize : String?
	let saltlevelindicator : String?
	let floodprotection : String?
	let dryingsystem : String?
	let automaticloadadjustment : String?
	let noiselevel : String?
	let digitaldisplay : String?
	let delicatewash : String?
	let quickwash : String?
	let homearea : String?
	let energyratingoverall : String?
	let onlineexclusive : String?
	let childlock : String?
	let timerdelay : String?
	let dryingperformance : String?
	let homeappliancetype : String?
	let cycledurationatratedcapacityfortheecocycle : String?
	let programsequenceindicator : String?
	let adjustableracking : String?
	let homeappliancefeatures : [String]?
	let quietmark : String?
	let noofprograms : String?
	let guarantee : String?
	let placesettings : String?
	let rinseaidindicator : String?
	let slimdepth : String?
	let weightedwaterconsumptionfortheecocycle : String?

	enum CodingKeys: String, CodingKey {

		case noiselevelrating = "noiselevelrating"
		case timeremainingindicator = "timeremainingindicator"
		case weightedenergyconsumptionper100cyclesforecocycle = "weightedenergyconsumptionper100cyclesforecocycle"
		case integratedorfreestanding = "integratedorfreestanding"
	//	case smarttechnology = "smarttechnology"
		case cutlerybasket = "cutlerybasket"
		case dishwashersize = "dishwashersize"
		case saltlevelindicator = "saltlevelindicator"
		case floodprotection = "floodprotection"
		case dryingsystem = "dryingsystem"
		case automaticloadadjustment = "automaticloadadjustment"
		case noiselevel = "noiselevel"
		case digitaldisplay = "digitaldisplay"
		case delicatewash = "delicatewash"
		case quickwash = "quickwash"
		case homearea = "homearea"
		case energyratingoverall = "energyratingoverall"
		case onlineexclusive = "onlineexclusive"
		case childlock = "childlock"
		case timerdelay = "timerdelay"
		case dryingperformance = "dryingperformance"
		case homeappliancetype = "homeappliancetype"
		case cycledurationatratedcapacityfortheecocycle = "cycledurationatratedcapacityfortheecocycle"
		case programsequenceindicator = "programsequenceindicator"
		case adjustableracking = "adjustableracking"
		case homeappliancefeatures = "homeappliancefeatures"
		case quietmark = "quietmark"
		case noofprograms = "noofprograms"
		case guarantee = "guarantee"
		case placesettings = "placesettings"
		case rinseaidindicator = "rinseaidindicator"
		case slimdepth = "slimdepth"
		case weightedwaterconsumptionfortheecocycle = "weightedwaterconsumptionfortheecocycle"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		noiselevelrating = try values.decodeIfPresent(String.self, forKey: .noiselevelrating)
		timeremainingindicator = try values.decodeIfPresent(String.self, forKey: .timeremainingindicator)
		weightedenergyconsumptionper100cyclesforecocycle = try values.decodeIfPresent(String.self, forKey: .weightedenergyconsumptionper100cyclesforecocycle)
		integratedorfreestanding = try values.decodeIfPresent(String.self, forKey: .integratedorfreestanding)
	//	smarttechnology = try values.decodeIfPresent(String.self, forKey: .smarttechnology)
		cutlerybasket = try values.decodeIfPresent(String.self, forKey: .cutlerybasket)
		dishwashersize = try values.decodeIfPresent(String.self, forKey: .dishwashersize)
		saltlevelindicator = try values.decodeIfPresent(String.self, forKey: .saltlevelindicator)
		floodprotection = try values.decodeIfPresent(String.self, forKey: .floodprotection)
		dryingsystem = try values.decodeIfPresent(String.self, forKey: .dryingsystem)
		automaticloadadjustment = try values.decodeIfPresent(String.self, forKey: .automaticloadadjustment)
		noiselevel = try values.decodeIfPresent(String.self, forKey: .noiselevel)
		digitaldisplay = try values.decodeIfPresent(String.self, forKey: .digitaldisplay)
		delicatewash = try values.decodeIfPresent(String.self, forKey: .delicatewash)
		quickwash = try values.decodeIfPresent(String.self, forKey: .quickwash)
		homearea = try values.decodeIfPresent(String.self, forKey: .homearea)
		energyratingoverall = try values.decodeIfPresent(String.self, forKey: .energyratingoverall)
		onlineexclusive = try values.decodeIfPresent(String.self, forKey: .onlineexclusive)
		childlock = try values.decodeIfPresent(String.self, forKey: .childlock)
		timerdelay = try values.decodeIfPresent(String.self, forKey: .timerdelay)
		dryingperformance = try values.decodeIfPresent(String.self, forKey: .dryingperformance)
		homeappliancetype = try values.decodeIfPresent(String.self, forKey: .homeappliancetype)
		cycledurationatratedcapacityfortheecocycle = try values.decodeIfPresent(String.self, forKey: .cycledurationatratedcapacityfortheecocycle)
		programsequenceindicator = try values.decodeIfPresent(String.self, forKey: .programsequenceindicator)
		adjustableracking = try values.decodeIfPresent(String.self, forKey: .adjustableracking)
		homeappliancefeatures = try values.decodeIfPresent([String].self, forKey: .homeappliancefeatures)
		quietmark = try values.decodeIfPresent(String.self, forKey: .quietmark)
		noofprograms = try values.decodeIfPresent(String.self, forKey: .noofprograms)
		guarantee = try values.decodeIfPresent(String.self, forKey: .guarantee)
		placesettings = try values.decodeIfPresent(String.self, forKey: .placesettings)
		rinseaidindicator = try values.decodeIfPresent(String.self, forKey: .rinseaidindicator)
		slimdepth = try values.decodeIfPresent(String.self, forKey: .slimdepth)
		weightedwaterconsumptionfortheecocycle = try values.decodeIfPresent(String.self, forKey: .weightedwaterconsumptionfortheecocycle)
	}

}
