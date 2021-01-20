//
//  MainView.swift
//  VandMarvel
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 19/01/21.
//  Copyright © 2021 Vand. All rights reserved.
//

import VandMarvelUIKit

class MainView: UIView, VMViewCode {

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func buildHierarchy() {}

    func setupConstraints() {}

    func configViews() {
        backgroundColor = .red
    }

}
