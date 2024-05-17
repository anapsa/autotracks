//
//  integracaoSpotify.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 16/05/24.
//

import Foundation
import SwiftUI
import SpotifyiOS
import Combine

@MainActor
final class SpotifyController: NSObject, ObservableObject {
    let spotifyClientID = "ca77d19112484b6c8839517cefee6e61"
    let spotifyRedirectURL = URL(string:"spotify-ios-quick-start://spotify-login-callback")!
    
    var accessToken: String? = nil

}

