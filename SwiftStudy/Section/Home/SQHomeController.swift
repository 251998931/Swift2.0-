//
//  SQHomeController.swift
//  SwiftStudy
//
//  Created by shu on 16/5/24.
//  Copyright © 2016年 shu. All rights reserved.
//
import UIKit

class SQHomeController: SQBaseController,UITableViewDataSource,UITableViewDelegate,UINavigationControllerDelegate,BannerViewDelegate{
    
    var tableView = UITableView()
    var cyclePictureView: CyclePictureView!
    ///顶部轮播视图
    var bannerView = BannerView()
    var localPic = ["第1张轮播图","第2张轮播图","第3张轮播图"]
    var localNewsPic = ["SignInBackImage","PersonCenterbackImage","第1张轮播图","第2张轮播图","第3张轮播图"]
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = UIColor.orangeColor()
//        self.setupLeftBack("返回")
        
        self.setupLeftBtn("searchBtn")
        self.title = "半糖"
        self.setupRightTitle("签到")
        
        self.tableView = UITableView.init(frame: CGRectMake(0, -20, ScreenWidth, ScreenHeight-20))
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.view.addSubview(self.tableView)
//        self.tableView.backgroundColor = UIColor.orangeColor()
        
//        self.bannerView =  BannerView.init(frame: CGRectMake(0, 0, self.view.frame.width, 514/2))
////        self.bannerView.backgroundColor = UIColor.redColor()
//        self.bannerView.delegate = self
////        cyclePictureView.timeInterval = 1
//        self.tableView.tableHeaderView = self.bannerView
        
     //"http://7xiwnz.com2.z0.glb.qiniucdn.com/element1/201601/56971024.jpg?v=1452685496"
    //"http://7xiwnz.com2.z0.glb.qiniucdn.com/element1/201601/48985698.jpg?v=1452572608"
        //"http://7xiwnz.com2.z0.glb.qiniucdn.com/element1/201601/48975450.jpg?v=1452504384"
        //"http://7xiwnz.com2.z0.glb.qiniucdn.com/element1/201601/10110149.jpg?v=1452157454"
        //"http://7xiwnz.com2.z0.glb.qiniucdn.com/element1/201601/51505010.jpg?v=1452049587"

        
        let cyclePictureView = CyclePictureView(frame: CGRectMake(0, 0, self.view.frame.width, 150), imageURLArray: nil)
        cyclePictureView.backgroundColor = UIColor.redColor()
//        cyclePictureView.imageURLArray = pics
        cyclePictureView.localImageArray = localPic
//        cyclePictureView.imageDetailArray = imageDetailArray
        cyclePictureView.timeInterval = 2
        self.tableView.tableHeaderView = cyclePictureView
    }
    
    //按钮点击代理
    func bannerVierFourButtonClicked(clickType: ClickType) {
        switch clickType{
            
        case ClickType.GoodSomeThingClickType:
            //好物
            print("好物")
//            let goodThingVC = GoodThingViewController()
//            self.navigationController?.pushViewController(goodThingVC, animated: true)
            break
        case ClickType.SearchClickType:
            //搜索
            print("搜索")
//            let searchVC = SearchViewController()
//            self.navigationController?.pushViewController(searchVC, animated: true)
            break
        case ClickType.PlantGrassClickType:
            //种草
            print("种草")
//            let plantGrassVC = PlantGrassViewController(leftTitle: "", rightTitle: "")
//            self.navigationController?.pushViewController(plantGrassVC, animated: true)
            break
        case ClickType.SignInClickType:
            //签到
            print("签到")
//            let signInVC = SignInViewController.init(leftTitle: "", rightTitle: "")
//            self.navigationController?.pushViewController(signInVC, animated: true)
            break
        }
    }

    
    override func leftIconClick(sender: UIButton) {
        
        TipView.showMessage("查找😄")
    }
    override func rightClick(sender: UIButton) {
        TipView.showMessage("签到😄")
    }
    
    //MARK:UITableView
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return localNewsPic.count + 1
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            return 80
        }else
        {
            return 230
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        if indexPath.row == 0 {
          let cell: SQHomeCell = SQHomeCell.cellWithTableView(tableView)
//        cell.textLabel?.text = "Row"
          return cell
        }
        else
        {
            let cell : SQHomeNewsCell = SQHomeNewsCell.cellWithTableView(tableView)
//            cell.textLabel?.text = "哈哈"
            cell.iconImg.image = UIImage(named: localNewsPic[indexPath.row - 1])
            return cell
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
    
    
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y;
        if (offsetY > 50) {
            let alpha = min(1, 1 - ((50 + 64 - offsetY) / 64));
  
            self.navigationController?.navigationBar.alpha = alpha
          
        }else
        {
           self.navigationController?.navigationBar.alpha = 0
        
        }

    }
    
    //MARK:navigationController
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        
        if(viewController == self){
            
            self.navigationController?.navigationBar.alpha = 0;
            self.navigationController?.navigationBar.translucent = true
        
        }else{
            
            self.navigationController?.navigationBar.alpha = 1;
            self.navigationController?.navigationBar.translucent = false
            
        }
        
        
    }

}
