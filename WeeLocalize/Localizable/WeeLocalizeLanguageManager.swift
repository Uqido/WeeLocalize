//
//  LanguageManager.swift
//  WeeLocalize
//
//  Created by Federico Gentile on 29/04/2019.
//  Copyright © 2019 gens. All rights reserved.
//

import Foundation

public class WeeLocalizeLanguageManager {
    public static let shared = WeeLocalizeLanguageManager()
    
    open public(set) var currentLanguage: String = ""
    
    init() {
        currentLanguage = UserDefaults.standard.string(forKey: WeeLocalizeLanguageManagerEnum.WEELOCALIZE_SELECTED_LANGUAGE.rawValue) ?? Locale.preferredLanguages[0] as String
    }
    
    public func set(currentLanguage lang: String){
        currentLanguage = lang
        UserDefaults.standard.set(lang, forKey: WeeLocalizeLanguageManagerEnum.WEELOCALIZE_SELECTED_LANGUAGE.rawValue)
    }

    public enum WeeLocalizeLanguageManagerEnum: String {
        case WEELOCALIZE_SELECTED_LANGUAGE
    }
}
