//
//  LocalizableTextView.swift
//  WeeLocalize
//
//  Created by Federico Gentile on 29/04/2019.
//  Copyright © 2019 gens. All rights reserved.
//

import UIKit

open class LocalizableTextVIew: UITextView, Localizable {
    //MARK: Localizable Protocol
    @IBInspectable var localizableIdentifier: String = "" {
        didSet { reload() }
    }
    
    func reload() {
        setString(fromIdentifier: localizableIdentifier)
    }
    
    func setString(fromIdentifier key: String, language: String? = nil) {
        self.text = WeeLocalizeManager.shared.getString(fromIdentifier: key, language: language)
    }
}
