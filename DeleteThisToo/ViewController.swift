//
//  ViewController.swift
//
//  Created by mengjiao on 1/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var image: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "Canary.jpg")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.text = "My name is Canary"
        // translatesAutoresizingMaskIntoConstraints must set to be False
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        view.backgroundColor = .white
    }

    //MARK：- set up views
    func setupViews() {
        view.addSubview(nameLabel)
        view.addSubview(image)
       
    }
    
    //MARK：- set up constraints
    func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        //image
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: safeArea.topAnchor),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          
        ])
        
        //nameLabel
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: image.bottomAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.widthAnchor.constraint(equalToConstant: 300),
            nameLabel.heightAnchor.constraint(equalToConstant: 50),
            nameLabel.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
            
        ])
            
    }

}

