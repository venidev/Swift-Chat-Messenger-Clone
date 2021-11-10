//
//  ATCStoryAdapter.swift
//    
//
//  Demo App - Veni on 5/15/18.
  
//

import UIKit

class ATCStoryAdapter: ATCGenericCollectionRowAdapter {
    let uiConfig: ATCUIGenericConfigurationProtocol
    init(uiConfig: ATCUIGenericConfigurationProtocol) {
        self.uiConfig = uiConfig
    }

    func configure(cell: UICollectionViewCell, with object: ATCGenericBaseModel) {
        guard let viewModel = object as? ATCStoryViewModel, let cell = cell as? ATCStoryCollectionViewCell else { return }
        cell.configure(viewModel: viewModel, uiConfig: uiConfig)
    }

    func cellClass() -> UICollectionViewCell.Type {
        return ATCStoryCollectionViewCell.self
    }

    func size(containerBounds: CGRect, object: ATCGenericBaseModel) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}
