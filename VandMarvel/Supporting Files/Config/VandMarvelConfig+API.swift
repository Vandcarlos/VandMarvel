//
//  VandMarvelConfig+API.swift
//  VandMarvel
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 25/01/21.
//  Copyright © 2021 Vand. All rights reserved.
//

import VandMarvelAPI

extension VandMarvelConfig {

    private static let apiBaseURL = "https://gateway.marvel.com/v1/public"
    private static let apiPrivateKey = "4ac0a26675297ec865dd86b84383d7c2e6b142ec"
    private static let apiPublicKey = "be26991cd47d953b96a8d18b4b384185"

    class func api() {
        VandMarvelAPI.shared.baseURL = "https://gateway.marvel.com/v1/public"
        VandMarvelAPI.shared.auth = VMAuth(
            privateKey: apiPrivateKey,
            publicKey: apiPublicKey
        )
    }

}
