//
//  ViewController.swift
//  DZ_1
//
//  Created by Nikita Shipovskiy on 27/03/2024.
//

import UIKit

class ViewController: UIViewController {

    private lazy var addButton = UIButton()
    private lazy var delAllButton = UIButton()
    private lazy var nameLabel = UILabel()
    private lazy var nameChangeLabel = UILabel()
    private lazy var surnameLabel = UILabel()
    private lazy var surnameChangeLabel = UILabel()
    private lazy var numberGroupLabel = UILabel()
    private lazy var numberGroupChangeLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(addButton)
        view.addSubview(delAllButton)
        view.addSubview(nameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(numberGroupLabel)
        view.addSubview(surnameChangeLabel)
        view.addSubview(nameChangeLabel)
        view.addSubview(numberGroupChangeLabel)
        
        SettingsButton()
        setNameLabel()
    }
    
    
    
    private func setNameLabel() {
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        nameLabel.textColor = .black
        nameLabel.numberOfLines = 0
        nameLabel.text = "Name:"
        nameLabel.frame = CGRect(x: 51 , y: 80, width: 87, height: 19)
        
        nameChangeLabel.text = ""
        nameChangeLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        nameChangeLabel.textColor = .red
        nameChangeLabel.frame = CGRect(x: 105 , y: 80, width: 87, height: 19)
        
        surnameLabel.text = "Surname:"
        surnameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        surnameLabel.textColor = .black
        surnameLabel.frame = CGRect(x: 51 , y: 112, width: 153, height: 19)
        
        surnameChangeLabel.text = ""
        surnameChangeLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        surnameChangeLabel.textColor = .red
        surnameChangeLabel.frame = CGRect(x: 128 , y: 112, width: 87, height: 19)
        
        numberGroupLabel.text = "Group number:"
        numberGroupLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        numberGroupLabel.textColor = .black
        numberGroupLabel.frame = CGRect(x: 51 , y: 144, width: 160, height: 19)
        
        numberGroupChangeLabel.text = ""
        numberGroupChangeLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        numberGroupChangeLabel.textColor = .red
        numberGroupChangeLabel.frame = CGRect(x: 168 , y: 144, width: 87, height: 19)
        
    }
    
    private func SettingsButton() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        addButton.setTitleColor(.white, for: .normal)
        addButton.setTitle("Добавить данные", for: .normal)
        addButton.backgroundColor = .black
        addButton.layer.cornerRadius = 18
        addButton.frame = CGRect(x: 23, y: 700, width: 350, height: 69)
        addButton.addTarget(self, action: #selector(ShowMyName), for: .touchUpInside)
        
        
        delAllButton.translatesAutoresizingMaskIntoConstraints = false
        delAllButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        delAllButton.setTitle("Очистить данные", for: .normal)
        delAllButton.setTitleColor(.systemBlue, for: .normal)
        delAllButton.frame = CGRect(x: 130, y: 800, width: 139, height: 19)
        delAllButton.addTarget(self, action: #selector(deleteAll), for: .touchUpInside)
    }
    
    @objc func ShowMyName() {
        nameChangeLabel.text = "Nikita"
        surnameChangeLabel.text = "Shipovskiy"
        numberGroupChangeLabel.text = "Group 6"
    }
    
    @objc func deleteAll() {
        nameChangeLabel.text = ""
        surnameChangeLabel.text = ""
        numberGroupChangeLabel.text = ""
        
    }

}

