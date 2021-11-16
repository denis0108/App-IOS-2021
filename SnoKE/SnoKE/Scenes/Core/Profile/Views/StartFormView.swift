//
//  HzView.swift
//  SnoKE
//
//  Created by Денис Харке on 14.11.2021.
//

import UIKit
import EasyPeasy
import TextFieldEffects

class StartFormView: UIView {
    
    private let cigaretteImage:UIImageView = {
        $0.image = UIImage(named: "cigarette broken")
        $0.alpha = 0.3
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    private let enterButton:UIButton = {
        $0.setTitle("Войти", for: .normal)
        $0.layer.cornerRadius = 13
        $0.backgroundColor = UIColor(red: 254/255, green: 203/255, blue: 146/255, alpha: 1)
        return $0
    }(UIButton())
    
    private let numberSmokedLabel:UILabel = {
        $0.text = "Сколько сигарет в день Вы курили?"
        $0.textColor = UIColor(red: 254/255, green: 203/255, blue: 146/255, alpha: 1)
        return $0
    }(UILabel())
    
    private let priceLabel:UILabel = {
        $0.text = "Сколько рублей стоила пачка?"
        $0.textColor = UIColor(red: 254/255, green: 203/255, blue: 146/255, alpha: 1)
        return $0
    }(UILabel())
    
    private let numberInPackLabel:UILabel = {
        $0.text = "Сколько сигарет было в пачке?"
        $0.textColor = UIColor(red: 254/255, green: 203/255, blue: 146/255, alpha: 1)
        return $0
    }(UILabel())
    
    private let numberSmokedContainer:UIView = {
        $0.backgroundColor = .none
        $0.layer.cornerRadius = 13
        $0.layer.borderWidth = 1
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private let priceContainer:UIView = {
        $0.backgroundColor = .none
        $0.layer.cornerRadius = 13
        $0.layer.borderWidth = 1
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private let numberInPackContainer:UIView = {
        $0.backgroundColor = .none
        $0.layer.cornerRadius = 13
        $0.layer.borderWidth = 1
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private let numberSmokedText:  UITextField = {
        $0.placeholder = "Кол-во сигарет"
        $0.keyboardType = .numberPad
        return $0
    }(UITextField())
    
    private let priceText:  UITextField = {
        $0.placeholder = "RUB"
        $0.keyboardType = .numberPad
        return $0
    }(UITextField())
    
    private let numberInPackText:  UITextField = {
        $0.placeholder = "Кол-во сигарет"
        $0.keyboardType = .numberPad
        return $0
    }(UITextField())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        numberSmokedContainer.addSubview(numberSmokedText)
        priceContainer.addSubview(priceText)
        numberInPackContainer.addSubview(numberInPackText)
        [cigaretteImage,
         numberSmokedLabel,
         priceLabel,
         numberInPackLabel,
         numberSmokedContainer,
         priceContainer,
         numberInPackContainer,
         enterButton].forEach{
            self.addSubview($0)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setLayout()
    }
    
    private func setLayout(){
        cigaretteImage.easy.layout(
            Size(CGSize(width: 170, height: 170)),
            Bottom(40).to(enterButton),
            CenterX(50)
        )
        
        numberSmokedLabel.easy.layout(
            Top(200),
            Left(30)
        )
        
        numberSmokedContainer.easy.layout(
            Top(5).to(numberSmokedLabel),
            Left(30),
            Right(30),
            Height(40)
        )
        
        priceLabel.easy.layout(
            Top(40).to(numberSmokedContainer),
            Left(30)
        )
        
        priceContainer.easy.layout(
            Top(5).to(priceLabel),
            Left(30),
            Right(30),
            Height(40)
        )
        
        numberInPackLabel.easy.layout(
            Top(40).to(priceContainer),
            Left(30)
        )
        
        numberInPackContainer.easy.layout(
            Top(5).to(numberInPackLabel),
            Left(30),
            Right(30),
            Height(40)
        )
        
        enterButton.easy.layout(
            Bottom((UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? .zero)+20),
            Size(CGSize(width: 300, height: 45)),
            CenterX()
        )
        
        [numberSmokedText,priceText,numberInPackText].forEach{
            $0.easy.layout(
                Left(10),
                Right(10),
                CenterY()
            )
        }
    }
}