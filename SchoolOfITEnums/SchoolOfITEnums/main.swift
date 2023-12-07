//
//  main.swift
//  SchoolOfITEnums
//
//  Authors: Peter Lam and Aneel Gillan
//

import Foundation

enum Major: String {
    case compSci = "Computer Science"
    case cyber = "Cybersecurity"
    case infoSys = "Information Systems"
    case network = "Computer Networking"
}

var compSciSequences = ["General Computer Science", "Web Computing", "Accelerated Masters General Computer Science"]
var infoSysSequences = ["Systems Development Analyst", "Web Application Development", "Integration of Enterprise Systems"]

var compSciSequencesString = "Sequences: "
var infoSysSequencesString = "Sequences: "

for sequence in compSciSequences {
    compSciSequencesString += sequence
    
    if sequence != compSciSequences.last {
        compSciSequencesString += ", "
    }
}

for sequence in infoSysSequences {
    infoSysSequencesString += sequence
    
    if sequence != infoSysSequences.last {
        infoSysSequencesString += ", "
    }
}

func displayMajor(major: Major) -> String {
    switch major {
    case .compSci:
        return "Major: \(major.rawValue)\n" + compSciSequencesString + "\n"
    case .cyber:
        return "Major: \(major.rawValue)\n"
    case .infoSys:
        return "Major: \(major.rawValue)\n" + infoSysSequencesString + "\n"
    case .network:
        return "Major: \(major.rawValue)\n"
    }
}

let compSciInfo = displayMajor(major: .compSci)
let infoSysInfo = displayMajor(major: .infoSys)
let cyberInfo = displayMajor(major: .cyber)
let networkInfo = displayMajor(major: .network)

print(compSciInfo)
print(infoSysInfo)
print(cyberInfo)
print(networkInfo)
