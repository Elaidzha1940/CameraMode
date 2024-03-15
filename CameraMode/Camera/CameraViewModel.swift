//  /*
//
//  Project: CameraMode
//  File: CameraViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.03.2024
//
//  */

import UIKit

protocol CameraViewModel {
    var isFlashEnabled: Bool { get set }
    var isLivePhotoEnabled: Bool { get set }
    var isWideScreenAvailable: Bool { get }
    var isWideScreenEnabled: Bool { get set }
    var isCameraFlipAvailable: Bool { get }
    
    func getAvailableCameraModes() -> [CameraModeModel]
    func getRecentImage() -> UIImage?
}
