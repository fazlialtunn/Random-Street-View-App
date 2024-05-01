//
//  ViewController.swift
//  Explore The World
//
//  Created by Fazli Altun on 1.05.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    var exploreButton = UIButton()
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Explore"
        configureButton()
        configureLabel()
    }
    
    private func configureLabel() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🌍"
        label.font = label.font.withSize(300)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 310),
            label.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func configureButton() {
        view.addSubview(exploreButton)
        exploreButton.translatesAutoresizingMaskIntoConstraints = false
        exploreButton.setTitle("Explore", for: .normal)
        exploreButton.addTarget(self, action: #selector(exploreWorld), for: .touchUpInside)
        exploreButton.backgroundColor = .orange
        exploreButton.layer.cornerRadius = 12
        
        NSLayoutConstraint.activate([
            exploreButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exploreButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            exploreButton.widthAnchor.constraint(equalToConstant: 200),
            exploreButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func exploreWorld() {
        let randomStreetVC = RandomStreetViewController()
        navigationController?.pushViewController(randomStreetVC, animated: true)
    }
}

