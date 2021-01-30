//
//  MainViewController.swift
//  VandMarvel
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 19/01/21.
//

import VandMarvelCharacters
import VandMarvelUIKit

class MainViewController: VMBaseTabBarController {

    private lazy var listCharacters: UINavigationController = {
        let viewController = VMListCharactersViewController()
        let navigationController = VMBaseNavigationController(rootViewController: viewController)
        let router = VMListCharactersRouter(navigationController: navigationController)
        let interactor = VMListCharactersInteractor()

        let presenter = VMListCharactersPresenter(
            view: viewController,
            interactor: interactor,
            router: router
        )

        viewController.presenter = presenter
        interactor.presenter = presenter

        navigationController.tabBarItem.title =
            VandMarvelCharacters.shared.charactersMessages.listCharactersTitle
        navigationController.tabBarItem.image = VMImage.list.image

        return navigationController
    }()

    private lazy var favoriteCharacters: UINavigationController = {
        let viewController = VMFavoriteCharactersViewController()
        let navigationController = VMBaseNavigationController(rootViewController: viewController)
        let router = VMFavoriteCharactersRouter(navigationController: navigationController)

        let interactor = VMFavoriteCharactersInteractor()
        let presenter = VMFavoriteCharactersPresenter(
            view: viewController,
            interactor: interactor,
            router: router
        )

        viewController.presenter = presenter
        interactor.presenter = presenter

        navigationController.tabBarItem.title =
            VandMarvelCharacters.shared.charactersMessages.favoriteCharactersTitle
        navigationController.tabBarItem.image = VMImage.heart.image

        return navigationController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [listCharacters, favoriteCharacters]
    }

}
