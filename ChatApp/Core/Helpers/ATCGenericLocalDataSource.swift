//
//  ATCGenericLocalDataSource.swift
//    
//
//  Demo App - Veni on 4/7/18.
  
//

class ATCGenericLocalDataSource<T: ATCGenericBaseModel>: ATCGenericCollectionViewControllerDataSource {
    weak var delegate: ATCGenericCollectionViewControllerDataSourceDelegate?

    var items: [T]

    init(items: [T]) {
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

    func update(items: [T]) {
        self.items = items
        self.delegate?.genericCollectionViewControllerDataSource(self, didLoadFirst: items)
    }
}
