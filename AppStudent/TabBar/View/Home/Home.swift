//
//  homeViewController.swift
//  AppStudent
//
//  Created by Apple on 3/7/21.
//

import UIKit

class Home: UIViewController {
    let homeCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        let collec = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collec.setCollectionViewLayout(layout, animated: true)
        collec.register(UICollectionView.self, forCellWithReuseIdentifier: "ID")
        collec.translatesAutoresizingMaskIntoConstraints = false
        return collec
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        // Do any additional setup after loading the view.
    }
    func setup() {
        homeCollection.delegate = self
        homeCollection.dataSource = self
        view.addSubview(homeCollection)
        NSLayoutConstraint.activate([
            homeCollection.topAnchor.constraint(equalTo: view.topAnchor),
            homeCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            homeCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension Home: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ID", for: indexPath)
        return cell
    }
    
    
}
