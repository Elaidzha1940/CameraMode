//  /*
//
//  Project: CameraMode
//  File: ViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.03.2024
//
//  */

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var flashButton: UIButton!
    @IBOutlet private var livePhotoButton: UIButton!
    
    var viewModel: CameraViewModelProtocol = CameraViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureFlashButton()
        configureLivePhotoButton()
    }
    
    @IBAction func didTapFlashButton() {
        viewModel.isFlashEnabled = !viewModel.isFlashEnabled
        configureFlashButton()
    }
    
    @IBAction func didTapLivePhotoButton() {
        viewModel.isLivePhotoEnabled = !viewModel.isLivePhotoEnabled
        configureLivePhotoButton()
    }
    
    private func configureFlashButton() {
        guard let button = flashButton else {
            return
        }
        let systemName = viewModel.isFlashEnabled ? "flashlight.off.circle.fill" : "flashlight.slash.circle"
        button.setImage(UIImage(systemName: systemName), for: .normal)
    }
    
    //    private func configureFlashButton() {
    //        let systemName = viewModel.isFlashEnabled ? "flashlight.on.circle" : "flashlight.slash.circle.fill"
    //        flashButton.setImage(UIImage(systemName: systemName), for: .normal)
    //    }
    
    private func configureLivePhotoButton() {
        guard let button = livePhotoButton else {
            return
        }
        let systemName = viewModel.isFlashEnabled ? "livephoto" : "livephoto.slash"
        button.setImage(UIImage(systemName: systemName), for: .normal)
    }
    
    //    private func configureLivePhotoButton() {
    //        let systemName = viewModel.isFlashEnabled ? "livephoto" : "livephoto.slash"
    //        livePhotoButton.setImage(UIImage(systemName: systemName), for: .normal)
    //    }
}

