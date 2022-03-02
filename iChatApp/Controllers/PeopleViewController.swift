//
//  PeopleViewController.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 09.02.2022.
//

import UIKit

class PeopleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        setupSearchBar() 
    }
    
    private func setupSearchBar() {
        navigationController?.navigationBar.barTintColor = .mainWhite()
        navigationController?.navigationBar.shadowImage = UIImage()
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
}

//MARK: - UISearchBarDelegate

extension PeopleViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}


//MARK: - SwiftUI

import SwiftUI

struct TabBarVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }

    struct ContainerView: UIViewControllerRepresentable {

        let TabBarVC = MainTabBarController()

        func makeUIViewController(context: UIViewControllerRepresentableContext<TabBarVCProvider.ContainerView>) -> MainTabBarController {
            return TabBarVC
        }

        func updateUIViewController(_ uiViewController: TabBarVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<TabBarVCProvider.ContainerView>) {
        }
    }
}
