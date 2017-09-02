//
//  AppDelegate.swift
//  BonjourWebDemo2
//
//  Created by qiukai on 2017/9/2.
//  Copyright © 2017年 smartisan. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, NetServiceDelegate {

    var window: UIWindow?
    var service: NetService!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        service = NetService(domain: "", type: "_demo_sharing._tcp", name: "test", port: 49152)
        service.delegate = self
        service.publish()
        
        return true
    }

    // MAKR: - NSNetServiceDelegate
    func netServiceWillPublish(_ sender: NetService) {
        print("netServiceWillPublish")
    }
    
    func netServiceDidPublish(_ sender: NetService) {
        print("netServiceDidPublish")
    }
    
    func netService(_ sender: NetService, didNotPublish errorDict: [String : NSNumber]) {
        print("netService didNotPublish")
    }
    
    func netServiceDidStop(_ sender: NetService) {
        print("netServiceDidStop")
    }
    
    func netServiceWillResolve(_ sender: NetService) {
        print("netServiceWillResolve")
    }
    
    func netServiceDidResolveAddress(_ sender: NetService) {
        print("netServiceDidResolveAddress")
    }
    
    func netService(_ sender: NetService, didNotResolve errorDict: [String : NSNumber]) {
        print("netService didNotResolve")
    }
    
    func netService(_ sender: NetService, didAcceptConnectionWith inputStream: InputStream, outputStream: OutputStream) {
        print("netService didAcceptConnectionWith")
    }
    
    func netService(_ sender: NetService, didUpdateTXTRecord data: Data) {
        print("netService didUpdateTXTRecord")
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

