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
