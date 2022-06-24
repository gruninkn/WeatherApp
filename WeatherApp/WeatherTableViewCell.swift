//
//  WeatherTableViewCell.swift
//  WeatherApp
//
//  Created by Kirill Grunin on 24.06.2022.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    private let whiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private let weekDayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Monday"
        
        label.backgroundColor = .white
        label.numberOfLines = 1
        label.textColor = .black
//        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private lazy var weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = UIImage(systemName: "bolt")
        
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let lowTempLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Low"
        
        label.backgroundColor = .white
        label.numberOfLines = 1
        label.textColor = .black
//        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let highTempLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "High"
        
        label.backgroundColor = .white
        label.numberOfLines = 1
        label.textColor = .black
        return label
    }()
    
    private func layout() {
        
        contentView.addSubview(whiteView)
        
        [weekDayLabel, weatherImageView, lowTempLabel, highTempLabel].forEach { whiteView.addSubview($0) }
        
        let standartInset: CGFloat = 12
        
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: contentView.topAnchor),
            whiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            whiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
          
            weekDayLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: standartInset),
            weekDayLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: standartInset),
            
            weatherImageView.topAnchor.constraint(equalTo: whiteView.topAnchor),
            weatherImageView.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor),
            weatherImageView.heightAnchor.constraint(equalToConstant: 50),
            weatherImageView.widthAnchor.constraint(equalToConstant: 50),
            weatherImageView.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
            
            lowTempLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: standartInset),
            lowTempLabel.trailingAnchor.constraint(equalTo: highTempLabel.leadingAnchor, constant: -standartInset),
            
            highTempLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: standartInset),
            highTempLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -standartInset)
        ])
    }
    
    ///Инициалиатор
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
