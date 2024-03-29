//
//  MainView.swift
//  DaftarBuku
//
//  Created by sayyid maulana khakul yakin on 10/16/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class MainView: UIViewController {

    fileprivate let mainImgView: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "mamilogo"))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    fileprivate let btnOne: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Daftar Buku", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = ColorTheme.Done
        btn.layer.cornerRadius = 5
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOpacity = 0.7
        btn.layer.shadowOffset = CGSize.zero
        btn.layer.shadowRadius = 3
        btn.addTarget(self, action: #selector(nextTab), for: .touchUpInside)
        return btn
    }()
    fileprivate let btnTwo: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Buku Baru", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = ColorTheme.Done
        btn.layer.cornerRadius = 5
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOpacity = 0.7
        btn.layer.shadowOffset = CGSize.zero
        btn.layer.shadowRadius = 3
        btn.addTarget(self, action: #selector(newBookTab), for: .touchUpInside)
        return btn
    }()
    fileprivate let btnThree: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Buku Populer", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = ColorTheme.Done
        btn.layer.cornerRadius = 5
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOpacity = 0.7
        btn.layer.shadowOffset = CGSize.zero
        btn.layer.shadowRadius = 3
        btn.addTarget(self, action: #selector(popularBookTab), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorTheme.VeryLightBlue
        navigationItem.title = "Technical Test"
        navigationController?.navigationBar.barTintColor = ColorTheme.VeryLightBlue

        setupView()
    }

    @objc func nextTab() {
        let myNext = ListMainView()
        navigationController?.pushViewController(myNext, animated: true)
    }
    @objc func newBookTab() {
        let myNext = NewBook()
        navigationController?.pushViewController(myNext, animated: true)
    }
    @objc func popularBookTab() {
        let myNext = PopularBook()
        navigationController?.pushViewController(myNext, animated: true)
    }

    private func setupView() {
        view.addSubview(mainImgView)
        view.addSubview(btnOne)
        view.addSubview(btnTwo)
        view.addSubview(btnThree)

        mainImgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImgView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        mainImgView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        mainImgView.heightAnchor.constraint(equalToConstant: 175).isActive = true
        mainImgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        mainImgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        
        btnOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnOne.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 370).isActive = true
        btnOne.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btnOne.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnOne.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        btnOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        
        btnTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnTwo.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 470).isActive = true
        btnTwo.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btnTwo.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnTwo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        btnTwo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        
        btnThree.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnThree.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 570).isActive = true
        btnThree.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btnThree.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnThree.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        btnThree.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true

    }
}
