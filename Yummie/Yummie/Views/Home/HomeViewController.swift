//
//  HomeViewController.swift
//  Yummie
//
//  Created by Syed Fasiullah Hussaini on 10/03/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        DishCategory(id: "1d1", name: "Indian Dish 1", image: "https://picsum.photos/100/200"),
        DishCategory(id: "1d2", name: "Indian Dish 2", image: "https://picsum.photos/100/200"),
        DishCategory(id: "1d3", name: "Indian Dish 3", image: "https://picsum.photos/100/200"),
        DishCategory(id: "1d4", name: "Indian Dish 4", image: "https://picsum.photos/100/200"),
        DishCategory(id: "1d5", name: "Indian Dish 5", image: "https://picsum.photos/100/200")
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Garri", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 34),
        .init(id: "id2", name: "Indomie", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 908),
        .init(id: "id3", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 25),
        .init(id: "id4", name: "Noodles", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 49),
        .init(id: "id5", name: "French fries", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 5987),
    ]
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Noodles", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 34),
        .init(id: "id2", name: "Burger", image: "https://picsum.photos/100/200", description: "This is the best that I have ever tasted", calories: 908)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }

}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case specialCollectionView:
            return specials.count
        default: return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setUp(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setUp(dish: populars[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setUp(dish: specials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
        
    }
}
