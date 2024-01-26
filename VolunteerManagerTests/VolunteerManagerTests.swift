//
//  VolunteerManagerTests.swift
//  VolunteerManagerTests
//
//  Created by Paul Inventado on 2/23/22.
//

import XCTest
@testable import VolunteerManager

class VolunteerManagerTests: XCTestCase {

    // Sample unit test
    func testAddValidNewVolunteer() {
        // Create Volunteer manager and add a volunteer with valid hours
        var manager = VolunteerManager()
        manager.volunteer("Paul", for: 5)
        
        // Successfully adding a volunteer should change the volunteers dictionary.
        // Therefore we check whether we can find Paul with 5 hours assigned.
        XCTAssertEqual(manager.volunteers["Paul"], 5)
    }
    
    // TODO: Create your unit tests below
    func testHoursGreaterThanTwenty() {
        var manager = VolunteerManager()
        manager.volunteer("Ralph", for: 30)
        
        XCTAssertEqual(manager.volunteers["Ralph"], 20)
    }
    
    func testHoursLessThanZero() {
        var manager = VolunteerManager()
        manager.volunteer("Frank", for: -1)
        
        XCTAssertEqual(manager.volunteers["Frank"], nil)
    }
    
    func testAddHours() {
        var manager = VolunteerManager()
        manager.volunteer("Rome", for: 5)
        manager.volunteer("Rome", for: 6)
        
        
        XCTAssertEqual(manager.volunteers["Rome"], 11)
    }
    
    func testAddNegHours() {
        var manager = VolunteerManager()
        manager.volunteer("Rome", for: 5)
        manager.volunteer("Rome", for: -6)
        
        
        XCTAssertEqual(manager.volunteers["Rome"], 5)
    }
 
}
