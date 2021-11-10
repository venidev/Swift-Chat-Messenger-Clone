//
//  ATCGenericLocalHeteroDataSource.swift
//    
//
//  Demo App - Veni on 5/19/18.
  
//

import UIKit

class ATCGenericLocalHeteroDataSource: ATCGenericCollectionViewControllerDataSource {
    weak var delegate: ATCGenericCollectionViewControllerDataSourceDelegate?

    let items: [ATCGenericBaseModel]

    init(items: [ATCGenericBaseModel]) {
        self.items = items
    }

    func object(at index: Int) -> ATCGenericBaseModel? {
        if index < items.count {
            return items[index]
        }
        return nil
    }

    func numberOfObjects() -> Int {
        return items.count
    }

    func loadFirst() {
        self.delegate?.genericCollectionViewControllerDataSource(self, didLoadFirst: items)
    }

    func loadBottom() {
    }

    func loadTop() {
    }
}
