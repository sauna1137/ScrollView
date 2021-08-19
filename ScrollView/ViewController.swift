//
//  ViewController.swift
//  ScrollView
//
//  Created by KS on 2021/04/13.
//

import UIKit

class ViewController: UIViewController,
                      UIScrollViewDelegate{
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollView2: UIScrollView!
    
    
    
    var pageArray = ["Page 1","Page 2","Page 3","Page 4","Page 5"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //scrollView
        //scrollViewをインスタンス化
        scrollView.delegate = self
        
        //scrollViewのページングを有効
        scrollView.isPagingEnabled = false
        
        //scrollViewのサイズを指定
        scrollView.contentSize = CGSize(width: view.frame.size.width * 3, height: scrollView.frame.size.height)
        
        
        //グラデーションをつける
        let gradientLayer = CAGradientLayer()
        
        //グラデーションをかけるフレームのサイズを指定
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view.frame.size.width * 3, height: scrollView.frame.size.height)
        
        
        
        //グラデーションさせるカラーの設定
        //今回は、徐々に色を濃くしていく
        let color1 = UIColor(red: 0, green: 0.4, blue: 0.3, alpha: 0.6).cgColor
        
        let color2 = UIColor(red: 120/256.0, green: 150/256.0, blue: 256/256.0, alpha: 0.9).cgColor
        
        //CAGradientLayerにグラデーションさせるカラーをセット
        gradientLayer.colors = [color1, color2]
        
        //グラデーションの開始地点・終了地点の設定
        //上が白で下が水色
        //        gradientLayer.startPoint = CGPoint.init(x: 0.5, y: 0)
        //        gradientLayer.endPoint = CGPoint.init(x: 0.5 , y:1 )
        
        //左が白で右が水色
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint.init(x: 1 , y:0.5)
        
        //左上が白で右下が水色
        //gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        //gradientLayer.endPoint = CGPoint.init(x: 1 , y:1)
        
        //scrollViewレイヤーにグラデーションレイヤーを挿入する
        self.scrollView.layer.insertSublayer(gradientLayer, at: 0)
        
        
        
        
        //scrollVIew2
        
        scrollView2.delegate = self
        scrollView2.isPagingEnabled = true
        scrollView2.contentSize = CGSize(width: view.frame.size.width * 5 ,height: scrollView2.frame.size.height)
        
        
        //page1...を追加
        for i in 0...4{
            
            let scrollViewLabel = UILabel(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: view.frame.size.height/5, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            
            scrollViewLabel.text = pageArray[i]
            scrollViewLabel.font = UIFont.boldSystemFont(ofSize: 10)
            scrollViewLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            scrollViewLabel.textAlignment = .center
            scrollView2.addSubview(scrollViewLabel)
            
        }
        
        
        let gradientLayer2 = CAGradientLayer()
        
        gradientLayer2.frame = CGRect(x: 0, y: 0, width: view.frame.size.width * 5, height: scrollView2.frame.size.height)
        
        let color3 = UIColor(red: 0.97, green: 0.85, blue: 0.54, alpha: 1).cgColor
        let color4 = UIColor(red: 0.80, green: 0.02, blue: 0.33, alpha: 0.7).cgColor
        let color5 = UIColor(cgColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).cgColor
        let color6 = UIColor(cgColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).cgColor
        
        
        gradientLayer2.colors = [color3,color4,color5,color6]
        
        gradientLayer2.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer2.endPoint = CGPoint.init(x: 1 , y: 1)
        gradientLayer2.startPoint = CGPoint.init(x: 0, y: 1)
        gradientLayer2.endPoint = CGPoint.init(x: 1, y: 0)
        
        self.scrollView2.layer.insertSublayer(gradientLayer2, at: 0)
        
    }
    
    
    
    
    
    
    
    
}

