//
//  MainViewController.swift
//  VandMarvel
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 19/01/21.
//

import VandMarvelCharacters
import VandMarvelUIKit

class MainViewController: VMBaseNavigationController {

    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        appTabBarController = VMBaseTabBarController()

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        setup()

        viewControllers = [appTabBarController]
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let appTabBarController: VMBaseTabBarController

    private lazy var listCharacters: VMListCharactersViewController = {
        let viewController = VMListCharactersViewController()
        let router = VMListCharactersRouter(navigationController: self)
        let interactor = VMListCharactersInteractor()

        let presenter = VMListCharactersPresenter(
            view: viewController,
            interactor: interactor,
            router: router
        )

        viewController.presenter = presenter
        interactor.presenter = presenter
        return viewController
    }()

    private lazy var favoriteCharacters: VMFavoriteCharactersViewController = {
        let viewController = VMFavoriteCharactersViewController()
        let router = VMFavoriteCharactersRouter(navigationController: self)

        let interactor = VMFavoriteCharactersInteractor()
        let presenter = VMFavoriteCharactersPresenter(
            view: viewController,
            interactor: interactor,
            router: router
        )

        viewController.presenter = presenter
        interactor.presenter = presenter

        return viewController
    }()

    private func setup() {
        appTabBarController.viewControllers = [listCharacters, favoriteCharacters]
        appTabBarController.title = VandMarvelCharacters.shared.charactersMessages.listCharactersTitle

        appTabBarController.tabBar.items?[0].title =
            VandMarvelCharacters.shared.charactersMessages.listCharactersTitle
        appTabBarController.tabBar.items?[0].image = VMImage.list.image

        appTabBarController.tabBar.items?[1].title =
            VandMarvelCharacters.shared.charactersMessages.favoriteCharactersTitle
        appTabBarController.tabBar.items?[1].image = VMImage.heart.image

        appTabBarController.delegate = self
    }

}

extension MainViewController: UITabBarControllerDelegate {

    func tabBarController(
        _ tabBarController: UITabBarController,
        didSelect viewController: UIViewController
    ) {
        switch viewController {
        case is VMListCharactersViewController:
            tabBarController.title = VandMarvelCharacters.shared.charactersMessages.listCharactersTitle
        case is VMFavoriteCharactersViewController:
            tabBarController.title = VandMarvelCharacters.shared.charactersMessages.favoriteCharactersTitle
        default: break
        }
    }

}
