//
//  CharacterDetailViewController.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class CharacterDetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet private weak var tableView: UITableView! {
        didSet { tableView.register(MediaTableCell.self)
        
        }
    }
    @IBOutlet private weak var headerView: CharecterDetailHeaderView!
    
    // MARK: - Properties
    
    private lazy var dataSource = TableDataSource<MediaTableCell>(tableView)
    var viewModel: CharacterDetailViewModel!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        handleViewModel()
        handleDataSource()
       

    }
    

}

// MARK: - Configurations 

private extension CharacterDetailViewController {
    func handleViewModel() {
        viewModel.loadItems()
        viewModel.state.bind { [weak self] in self?.dataSource.state = $0 }
        viewModel.character.bind { [weak self] in
            self?.title = $0.name
            self?.headerView.configure(with: $0)
            
        }
        
    }
    
    func handleDataSource() {
        dataSource.cellIndexPathHandler = { [weak self] cell, indexPath in
            self?.didConfigure(cell, at: indexPath)
        }
    }
    
    func didConfigure<Cell: TableCell>(_ cell: Cell, at indexPath: IndexPath) {
        guard let cell = cell as? MediaTableCell else { return }
        let item = viewModel.state.value.items[indexPath.row]
        cell.configure(with: item)
    }
    
}
