//
//  ATCMenuItemRowAdapter.swift
//  ShoppingApp
//
//  Demo App - Veni on 3/19/18.
  
//

import UIKit

class ATCMenuItemRowAdapter: ATCGenericCollectionRowAdapter {

    let cellClassType: UICollectionViewCell.Type
    let uiConfig: ATCMenuUIConfiguration

    init(cellClassType: UICollectionViewCell.Type, uiConfig: ATCMenuUIConfiguration) {
        self.cellClassType = cellClassType
        self.uiConfig = uiConfig
    }

    func configure(cell: UICollectionViewCell, with object: ATCGenericBaseModel) {
        guard let item = object as? ATCNavigationItem, let cell = cell as? ATCMenuItemCollectionViewCellProtocol else {
            fatalError()
        }
        cell.configure(item: item)
        cell.menuLabel.font = uiConfig.itemFont
        cell.menuLabel.textColor = uiConfig.tintColor
        cell.menuImageView.tintColor = uiConfig.tintColor
    }

    func cellClass() -> UICollectionViewCell.Type {
        return cellClassType
    }

    func size(containerBounds: CGRect, object: ATCGenericBaseModel) -> CGSize {
        return CGSize(width: containerBounds.width, height: uiConfig.itemHeight)
    }
}
