//
//  TableViewCell.swift
//  BackDrop Test App
//
//  Created by MBUSER on 06/07/2021.
//

import UIKit

class CatTableViewCell: UITableViewCell {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catName: UILabel!
    @IBOutlet weak var favourite: UIImageView!
    
    
    var catItem: CatResponseItemModelElement? {
        didSet {
            if let item = catItem {
                configure(item: item)
            }
        }
    }
    
    func configure(item: CatResponseItemModelElement) {
        catName.text = item.name
        NKPlaceholderImage( imageView: catImage, imgUrl: (item.image?.url ?? "")) { _ in  }
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CatTableViewCell.imageTapped(gesture:)))
        favourite.addGestureRecognizer(tapGesture)
        favourite.isUserInteractionEnabled = true
    }

    @objc func imageTapped(gesture: UIGestureRecognizer) {
           if (gesture.view as? UIImageView) != nil {
               print("Image Tapped")
            if #available(iOS 13.0, *) {
                favourite.image = UIImage(systemName: "heart.fill")
            } else {
                favourite.image = UIImage(named: "heart.fill")
            }

           }
       }
    

    func NKPlaceholderImage( imageView: UIImageView?, imgUrl: String, compate: @escaping (UIImage?) -> Void) {
        if imgUrl == "" {
            imageView!.image = UIImage(named: "edit_icon.jpg")
            return
        }
        var urlcatch = imgUrl.replacingOccurrences(of: "/", with: "#")
        let documentpath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        urlcatch = documentpath + "/" + "\(urlcatch)"
        print("full pathh url \(urlcatch)")
        let image = UIImage(contentsOfFile: urlcatch)
        if image != nil, imageView != nil {
            imageView!.contentMode = .scaleAspectFit
            imageView!.image = image!
            compate(image)

        } else {
            if let url = URL(string: imgUrl) {
                DispatchQueue.global(qos: .background).async {
                    () -> Void in
                    let imgdata = NSData(contentsOf: url)
                    DispatchQueue.main.async {
                        () -> Void in
                        imgdata?.write(toFile: urlcatch, atomically: true)
                        let image = UIImage(contentsOfFile: urlcatch)
                        compate(image)
                        if image != nil {
                            if imageView != nil {
                                imageView!.contentMode = .scaleAspectFit
                                imageView!.image = image!
                            }
                        }
                    }
                }
            }
        }
    }
    
}
