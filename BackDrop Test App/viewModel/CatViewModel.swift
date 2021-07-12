//
//  CatViewModel.swift
//  BackDrop Test App
//
//  Created by MBUSER on 06/07/2021.
//

import Foundation


protocol CatViewModelProtocol {
    var catModelDidChanges: ((Bool, Bool) -> Void)? { get set }
    func fetchCatList(page :  Int , limit : Int)
}

class CatViewModel: CatViewModelProtocol {

    
 

    //MARK: - Internal Properties
    
    var catModelDidChanges: ((Bool, Bool) -> Void)?
    
    var catItem: [CatResponseItemModelElement]? {
        didSet {
            self.catModelDidChanges!(true, false)
        }
    }
    
    func fetchCatList(page :  Int , limit : Int) {
        self.catItem = [CatResponseItemModelElement]()
        CatApiService.instance.fetchCatList(limit: limit, page: page) { result in
            if result == nil {
                print ("I am null in swift ")
            }
            switch result {
            case .success(let data):
                print(data.count)
                let mappedModel = try? JSONDecoder().decode(CatResponseItemModel.self, from: data) as CatResponseItemModel
                self.catItem = mappedModel ?? []
                break
            case .failure(let error):
                print(error.description)
            }
        }
    }
    
    func  fetchFromFile(){
        self.catItem = [CatResponseItemModelElement]()
        CatApiService.instance.loadFromFile { result,arg  in
            if arg {
                self.catItem = []
            }else{
                self.catItem = result
            }
        }
    }
    
}
