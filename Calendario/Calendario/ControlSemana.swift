//
//  ControlSemana.swift
//  Calendario
//
//  Created by Laboratorio UNAM-Apple09 on 6/4/19.
//  Copyright © 2019 Andrey. All rights reserved.


import UIKit

class WeekdaysView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor=UIColor.clear
        
        setupViews()
    }
    
    func setupViews() {
        addSubview(myStackView)
        myStackView.topAnchor.constraint(equalTo: topAnchor).isActive=true
        myStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive=true
        myStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive=true
        myStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive=true
        
        var daysArr = ["Do", "Lun", "Mar", "Mi", "Ju", "Vi", "Sa"]
        for i in 0..<7 {
            let lbl=UILabel()
            lbl.text=daysArr[i]
            lbl.textAlignment = .center
            lbl.textColor = Style.weekdaysLblColor
            myStackView.addArrangedSubview(lbl)
        }
    }
    
    let myStackView: UIStackView = {
        let stackView=UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints=false
        return stackView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

    

