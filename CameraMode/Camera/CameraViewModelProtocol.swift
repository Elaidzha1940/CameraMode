//  /*
//
//  Project: CameraMode
//  File: CameraViewModelProtocol.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.03.2024
//
//  */

import UIKit

protocol CameraViewModelProtocol {
    var isFlashEnabled: Bool { get set }
    var isLivePhotoEnabled: Bool { get set }
    var isWideScreenAvailable: Bool { get }
    var isWideScreenEnabled: Bool { get set }
    var isCameraFlipAvailable: Bool { get }
    func getAvailableCameraModes() -> [CameraModeModel]
    func getRecentImage() -> UIImage?
}
