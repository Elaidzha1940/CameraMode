//  /*
//
//  Project: CameraMode
//  File: CameraViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.03.2024
//
//  */

import UIKit
import Foundation
import AVFoundation

class CameraViewModel {
    let userDefaults = UserDefaults.standard
    let dbManager = DBServices()
}

//MARK: - CameraViewModelProtocol
extension CameraModeModel: CameraViewModelProtocol {
    var isFlashEnabled: Bool {
        get {
            userDefaults.bool(forKey: "isFlashEnabled")
        }
        set {
            userDefaults.set(newValue, "isFlashEnabled")
        }
    }
    
    var isLivePhotoEnabled: Bool {
        get {
            userDefaults.bool(forKey: "isLivePhotoEnabled")
        }
        set {
            userDefaults.set(newValue, "isLivePhotoEnabled")
        }
    }
    
    var isWideScreenAvailable: Bool {
        if let _ = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
            return true
        } else {
            return false
        }
    }
    
    var isWideScreenEnabled: Bool {
        get {
            userDefaults.bool(forKey: "isWideScreenAvailable")
        }
        set {
            userDefaults.set(newValue, "isWideScreenAvailable")
        }
    }
    
    var isCameraFlipAvailable: Bool {
        if #available(iOS 4.0, *) {
            return true
        } else {
            return false
        }
    }
    
    func getAvailableCameraModes() -> [CameraModeModel] {
        var modes = [CameraModeModel]()
        modes.append(.photo)
        modes.append(.video)
        if let _ = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
            modes.append(.portrait)
        }
        if #available(iOS 12.0, *) {
            modes.append(.slowMotion)
        }
        modes.append(.pano)
        return modes
    }
    
    func getRecentImage() -> UIImage? {
        dbManager.getRecentImage()
    }
}
