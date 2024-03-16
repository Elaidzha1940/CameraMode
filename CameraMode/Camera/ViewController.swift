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
    
    let viewModel: CameraViewModelProtocol = CameraViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureFlashButton()
    }
    
    private func configureFlashButton() {
        let systemName = viewModel.isFlashEnabled ? "lightbulb" : "lightbulb.slash"
        flashButton.setImage(UIImage(systemName: systemName), for: .normal)
    }
    
    private func configureLivePhotoButton() {
        let systemName = viewModel.isFlashEnabled ? "livephoto" : "livephoto.slash"
        flashButton.setImage(UIImage(systemName: systemName), for: .normal)
    }
}

