//
//  Functions.swift
//  MyLocations
//
//  Created by Eder  Padilla on 20/10/23.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(
        deadline: .now() + seconds,
        execute: run)
}

let applicationDocumentsDirectory: URL = {
    let paths = FileManager.default.urls(
        for: .documentDirectory,
        in: .userDomainMask)
    return paths[0]
}()

let dataSaveFailedNotification = Notification.Name(
    rawValue: "DataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal error: \(error)")
    NotificationCenter.default.post(
        name: dataSaveFailedNotification,
        object: nil)
}

extension String {
    
    mutating func add(text: String?, separatedBy separator: String) {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
