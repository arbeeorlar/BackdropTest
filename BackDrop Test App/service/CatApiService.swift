
import UIKit

class CatApiService: NSObject, Requestable {

    static let instance = CatApiService()
    
    func loadFromFile(callback: @escaping(CatResponseItemModel?,Bool) -> Void) {
        let filePath = Bundle.main.url(forResource: "ListOfCat", withExtension: "json")
        let originalContents = try? Data(contentsOf: filePath!)
        let catItems = try? JSONDecoder().decode([CatResponseItemModelElement].self, from: originalContents!)
        if catItems!.count >  0 {
            callback( catItems, false)
        }else{
            callback( [], true)
        }
    }
    
    func fetchCatList(limit : Int , page :Int, callback: @escaping Handler) {
        let paginatedUrl =  Domain().setCatUrl() + ApiKeys.catKey + "&limit=\(limit)" + "&page=\(page)"
        print(paginatedUrl)
        request(url: paginatedUrl) { (result) in
           callback(result)
        }
        
    }
    
}
