//
//  ViewController.swift
//  Floating Button Action
//
//  Created by Ogabek Mansurov on 8/6/23.
//

import UIKit


class ViewController: UIViewController {
    
    let button: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.backgroundColor = .none
        return button
    }()
    let buttonWrite: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "write"), for: .normal)
        button.backgroundColor = .none
        return button
    }()
    let buttonImage: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "upload"), for: .normal)
        button.backgroundColor = .none
        return button
    }()
    let buttonVoice: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "voice"), for: .normal)
        button.backgroundColor = .none
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        button.addTarget(.none, action: #selector(didtap), for: .touchUpInside)
            
        view.addSubview(buttonImage)
        view.addSubview(buttonVoice)
        view.addSubview(buttonWrite)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        buttonImage.translatesAutoresizingMaskIntoConstraints = false
        buttonVoice.translatesAutoresizingMaskIntoConstraints = false
        buttonWrite.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            
            
            buttonImage.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            buttonImage.centerYAnchor.constraint(equalTo: button.centerYAnchor),
            buttonImage.heightAnchor.constraint(equalToConstant: view.frame.size.width/7),
            buttonImage.widthAnchor.constraint(equalToConstant: view.frame.size.width/7),
            
            buttonVoice.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            buttonVoice.centerYAnchor.constraint(equalTo: button.centerYAnchor),
            buttonVoice.heightAnchor.constraint(equalToConstant: view.frame.size.width/7),
            buttonVoice.widthAnchor.constraint(equalToConstant: view.frame.size.width/7),
            
            buttonWrite.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            buttonWrite.centerYAnchor.constraint(equalTo: button.centerYAnchor),
            buttonWrite.heightAnchor.constraint(equalToConstant: view.frame.size.width/7),
            buttonWrite.widthAnchor.constraint(equalToConstant: view.frame.size.width/7),
            
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: view.frame.size.width/6),
            button.widthAnchor.constraint(equalToConstant: view.frame.size.width/6),
            
            
        ])
    }
    
    @objc func didtap() {
            
            UIView.animate(withDuration: 0.6,
                           animations: {
                self.button.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
                self.button.transform = CGAffineTransform(rotationAngle: .pi/4)
                },
                           completion: { _ in
                UIView.animate(withDuration: 0.9) {
                    
                    self.button.setImage(UIImage(named: "redPlus"), for: .normal)
                    
                }
                
            })
        UIView.animateKeyframes(withDuration: 1,
                                delay: 0,
                                options: .calculationModeCubicPaced,
                              animations: {
                                UIView.addKeyframe(
                                  withRelativeStartTime: 0.25,
                                  relativeDuration: 0) {
                                      self.buttonWrite.transform = CGAffineTransform(translationX: -75, y: -75)
                                      self.buttonImage.transform = CGAffineTransform(translationX: 0, y: -90)
                                      self.buttonVoice.transform = CGAffineTransform(translationX: -90, y: 0)
                                }
        }, completion: nil)
}
               
    @objc func didtapButtun() {
        
        UIView.animate(withDuration: 0.6,
                       animations: {
            self.button.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
            self.button.transform = CGAffineTransform.identity
            
        },
                       completion: { _ in
            UIView.animate(withDuration: 0.6) {
            }
            UIView.animate(withDuration: 0.9) {
                
                self.button.setImage(UIImage(named: "plus"), for: .normal)
                
            }
            
        })
    }


}

