//
//  Popular.swift
//  DaftarBuku
//
//  Created by sayyid maulana khakul yakin on 10/17/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class PopularBook: UITableViewController {
    
    fileprivate let mainImgView: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "mamilogo"))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    fileprivate let viewList: UIView = {
        let uiView = UIView()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.backgroundColor = UIColor(netHex: 0xFAFAFA)
        uiView.layer.cornerRadius = 5
        uiView.layer.shadowColor = UIColor.black.cgColor
        uiView.layer.shadowOpacity = 0.7
        uiView.layer.shadowOffset = CGSize.zero
        uiView.layer.shadowRadius = 3
        return uiView
    }()
    fileprivate var childImgView: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "mamilogo"))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    fileprivate var titleLable: UILabel = {
        let uiLabel = UILabel()
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.textAlignment = .center
        uiLabel.text = "Judul Buku"
        return uiLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorTheme.VeryLightBlue
        navigationItem.title = "Daftar Buku Populer"
        navigationController?.navigationBar.barTintColor = ColorTheme.VeryLightBlue
        setupView()
    }
    
    private func setupView() {
        view.addSubview(mainImgView)
        view.addSubview(viewList)
        viewList.addSubview(childImgView)
        viewList.addSubview(titleLable)
        
        mainImgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImgView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        mainImgView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        mainImgView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        mainImgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -125).isActive = true
        mainImgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 125).isActive = true
        
        viewList.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewList.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 180).isActive = true
        viewList.widthAnchor.constraint(equalToConstant: 200).isActive = true
        viewList.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewList.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        viewList.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        
        titleLable.topAnchor.constraint(equalTo: viewList.topAnchor,constant: 40).isActive = true
        titleLable.rightAnchor.constraint(equalTo: viewList.rightAnchor, constant: -75).isActive = true
    }
}
