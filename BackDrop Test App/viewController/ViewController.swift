//
//  ViewController.swift
//  BackDrop Test App
//
//  Created by MBUSER on 04/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var rowCounter: Int? = 1
    var limit:  Int  =  10
    var page :  Int =  1
    var counter :  Int = 0
    private let refreshControl = UIRefreshControl()
    @IBOutlet weak var catTableView: UITableView!
    let viewModel = CatViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        // Do any additional setup after loading the view.
    }


}


//MARK: Prepare UI

extension ViewController {
    
    func prepareUI() {
        prepareTableView()
        prepareViewModelObserver()
        fetchCatList()
        
//        refreshControl.addTarget(self, action: #selector(refreshCatItemData(_:)), for: .valueChanged)
//        refreshControl.tintColor = UIColor.gray
//        refreshControl.attributedTitle = NSAttributedString(string: "LOADING ...", attributes: nil)
    }
    
    
    func prepareTableView() {
        self.view.backgroundColor = .white
        self.catTableView.separatorStyle   = .none
        self.catTableView.delegate = self
        self.catTableView.dataSource = self
        
       // addRefreshControl()
    }
    
    func addRefreshControl() {
        if #available(iOS 10.0, *) {
            self.catTableView.refreshControl = refreshControl
        } else {
            self.catTableView.addSubview(refreshControl)
        }
    }
  
}
////Refresh button Action
//extension ViewController {
//
//    @objc private func refreshCatItemData(_: Any) {
//        self.page += 1
//        self.limit += 10
//        print("Page \(page ) Limit \(limit)")
//        viewModel.fetchCatList(page: self.page, limit: self.limit)
//        prepareViewModelObserver()
//        self.refreshControl.endRefreshing()
//        print(viewModel.catItem?.count ?? 0)
//    }
//}

extension ViewController {
    
    func fetchCatList() {
        viewModel.fetchCatList(page: self.page, limit: self.limit)
       // viewModel.fetchFromFile()
        counter = viewModel.catItem!.count
        print(viewModel.catItem?.count ?? 0)
        
    }
    
    func prepareViewModelObserver() {
        self.viewModel.catModelDidChanges = { (finished, error) in
            if !error {
                self.reloadTableView()
            }
        }
    }
    
    func reloadTableView() {
        self.catTableView.reloadData()
    }
}

// MARK: - UITableView Delegate And Datasource Methods

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.catItem!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: CatTableViewCell = tableView.dequeueReusableCell(withIdentifier: "catType", for: indexPath as IndexPath) as? CatTableViewCell else {
            fatalError("AddressCell cell is not found")
        }
      
        let _catItem = viewModel.catItem![indexPath.row]
        cell.catItem = _catItem
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        catTableView.estimatedRowHeight = 90
        catTableView.rowHeight = UITableView.automaticDimension
        return UITableView.automaticDimension
    }
}

