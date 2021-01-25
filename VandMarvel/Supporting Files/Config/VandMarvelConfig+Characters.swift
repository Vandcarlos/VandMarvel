//
//  VandMarvelConfig+Characters.swift
//  VandMarvel
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 25/01/21.
//  Copyright © 2021 Vand. All rights reserved.
//

import VandMarvelCharacters

extension VandMarvelConfig {

    class func characters() {
        VandMarvelCharacters.shared.charactersMessages = CharacterMessages()
    }

    class CharacterMessages: VMCharactersMessages {

        var alertTitle: String {
            NSLocalizedString("alert_title", comment: "")
        }

        var alertMessage: String {
            NSLocalizedString("alert_message", comment: "")
        }

        var confirmAction: String {
            NSLocalizedString("confirm_action", comment: "")
        }

        var cancelAction: String {
            NSLocalizedString("cancel_action", comment: "")
        }

        var tryAgainAction: String {
            NSLocalizedString("try_again_action", comment: "")
        }

        var withoutInternetConnection: String {
            NSLocalizedString("without_internet_connection", comment: "")
        }

        var listCharactersEmptyState: String {
            NSLocalizedString("list_characters_empty_state", comment: "")
        }

        var listCharactersTitle: String {
            NSLocalizedString("list_characters_title", comment: "")
        }

        var favoriteCharactersEmptyState: String {
            NSLocalizedString("favorite_characters_empty_state", comment: "")
        }

        var favoriteCharactersTitle: String {
            NSLocalizedString("favorite_characters_title", comment: "")
        }

        var characterDetailsTitle: String {
            NSLocalizedString("character_details_title", comment: "")
        }

    }

}
