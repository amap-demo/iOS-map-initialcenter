//
//  MapInitialcenterDemoUITests.m
//  MapInitialcenterDemoUITests
//
//  Created by hanxiaoming on 16/12/11.
//  Copyright © 2016年 AutoNavi. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface MapInitialcenterDemoUITests : XCTestCase

@end

@implementation MapInitialcenterDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"\u5317\u4eac"] tap];
    
    XCUIElement *backButton = [[[app.navigationBars[@"\u9009\u62e9\u5730\u56fe\u4e2d\u5fc3\u70b9\u6240\u5728\u57ce\u5e02"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Back"] elementBoundByIndex:0];
    [backButton tap];
    [app.buttons[@"\u676d\u5dde"] tap];
    [backButton tap];
    [app.buttons[@"\u4e0a\u6d77"] tap];
    [backButton tap];
    
}

@end
