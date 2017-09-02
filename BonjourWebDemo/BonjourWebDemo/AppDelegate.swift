//
//  AppDelegate.swift
//  BonjourWebDemo
//
//  Created by qiukai on 2017/9/1.
//  Copyright © 2017年 smartisan. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, NetServiceBrowserDelegate {

    var window: UIWindow?
    var browser: NetServiceBrowser!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        browser = NetServiceBrowser()
        browser.delegate = self
        browser .searchForServices(ofType: "_demo_sharing._tcp", inDomain: "")
        return true
    }

    // MARK: - NetServiceBrowserDelegate
    func netServiceBrowserWillSearch(_ browser: NetServiceBrowser) {
        print("netServiceBrowserWillSearch")
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool) {
        print("netServiceBrowser didFind service")
        print("type=\(service.type)\nname=\(service.name)")
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didNotSearch errorDict: [String : NSNumber]) {
        print("netServiceBrowser didNotSearch errorDict")
    }
    
    func netServiceBrowserDidStopSearch(_ browser: NetServiceBrowser) {
        print("netServiceBrowser netServiceBrowserDidStopSearch")
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didRemove service: NetService, moreComing: Bool) {
        print("netServiceBrowser didRemove service")
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didFindDomain domainString: String, moreComing: Bool) {
        print("netServiceBrowser didFindDomain domainString")
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool) {
        print("netServiceBrowser didRemoveDomain domainString")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
}


