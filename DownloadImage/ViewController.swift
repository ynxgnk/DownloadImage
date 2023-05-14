//
//  ViewController.swift
//  DownloadImage
//
//  Created by Nazar Kopeika on 14.05.2023.
//

import UIKit
import SDWebImage /* 23 */

class ViewController: UIViewController {
    
    let urlString = "https://iosacademy.io/assets/images/brand/icon.png" /* 1 */

    private let imageView: UIImageView = { /* 2 */
       let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200)) /* 3 */
//        imageView.backgroundColor = .red /* 4 */
        imageView.contentMode = .scaleAspectFit /* 5 */
        imageView.clipsToBounds = true /* 22 */ 
        return imageView /* 6 */
    }()
    
    override func viewDidLoad() { /* 7 */
        super.viewDidLoad() /* 8 */
        view.addSubview(imageView) /* 9 */
        imageView.center = view.center /* 10 */
        imageView.sd_setImage(with: URL(string: urlString), completed: nil) /* 24 */
        imageView.sd_setImage(with: URL(string: urlString),
                              placeholderImage: UIImage(systemName: "photo"),
                              options: .continueInBackground,
                              context: nil) /* 25 */
//        fetchImage() /* 17 */
    }
    
    /*
    private func fetchImage() { /* 11 To download manually */
        //get Data
        //convert the data to image
        //set image to imageView
        guard let url = URL(string: urlString) else { /* 15 */
            return /* 16 */
        }
        let getDataTask = URLSession.shared.dataTask(with: url) { data, _, error in /* 12 */
            guard let data = data, error == nil else { /* 13 */
                return /* 14 */
            }
            DispatchQueue.main.async { /* 20 */
                let image = UIImage(data: data) /* 18 */
                self.imageView.image = image /* 19 */
            }
        }
        
        getDataTask.resume() /* 21 */
    }

*/
}

