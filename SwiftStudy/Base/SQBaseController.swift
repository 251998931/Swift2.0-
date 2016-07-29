//
//  SQBaseController.swift
//  SwiftStudy
//
//  Created by shu on 16/5/24.
//  Copyright © 2016年 shu. All rights reserved.
//

import UIKit

class SQBaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
    }
    
    //左侧返回按钮
      func setupLeftBack(leftTitle:String){
        
        
        let leftBtn = UIButton.init()
        leftBtn.frame = CGRectMake(0, 0, ScreenWidth/2+30, 30)
        leftBtn.addTarget(self, action: "leftBackClick:", forControlEvents: .TouchUpInside)
//        leftBtn.backgroundColor = UIColor.cyanColor()
        
        let leftIcon = UIImageView.init(frame: CGRectMake(0, 5, 20, 20))
        leftIcon.image = UIImage(named: "back")
        leftBtn.addSubview(leftIcon)
//        leftIcon.backgroundColor = UIColor.yellowColor()
        
        let leftLabel = UILabel.init(frame:CGRectMake(CGRectGetMaxX(leftIcon.frame), 0, ScreenWidth/2, 30))
        leftLabel.font = UIFont.systemFontOfSize(14)
        leftLabel.textColor = UIColor.whiteColor()
        leftLabel.text = leftTitle
        leftBtn.addSubview(leftLabel)
//        leftLabel.backgroundColor = UIColor.whiteColor()
        
        
        
        let item = UIBarButtonItem.init(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = item
    
      
    }
    
    //左侧图片按钮
    func setupLeftBtn(leftIconName:String){
        
        
        let leftBtn = UIButton.init()
        leftBtn.frame = CGRectMake(0, 5, 20, 20)
        leftBtn.addTarget(self, action: "leftIconClick:", forControlEvents: .TouchUpInside)
        leftBtn.setImage(UIImage(named: leftIconName), forState: .Normal)
        let item = UIBarButtonItem.init(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = item
        
        
    }
    //左侧标题按钮
    func setupLeftTitle(leftTitle:String){
        
        
        let leftBtn = UIButton.init()
        leftBtn.frame = CGRectMake(0, 5, 60, 20)
        leftBtn.addTarget(self, action: "leftIconClick:", forControlEvents: .TouchUpInside)
        leftBtn.setTitle(leftTitle, forState: .Normal)
        let item = UIBarButtonItem.init(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = item
        
        
    }
    
    //左侧带图片和标题按钮
    func setupLeftTitleAndIcon(leftTitle:String,leftIconName:String){
        
        
        let leftBtn = UIButton.init()
        leftBtn.frame = CGRectMake(0, 5, 60, 20)
        leftBtn.addTarget(self, action: "leftIconClick:", forControlEvents: .TouchUpInside)
        leftBtn.setImage(UIImage(named: leftIconName), forState: .Normal)
        leftBtn.setTitle(leftTitle, forState: .Normal)
        let item = UIBarButtonItem.init(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = item
        
        
    }

    
    //右侧图片按钮
    func setupRightBtn(rightIconName:String){
        
        
        let rightBtn = UIButton.init()
        rightBtn.frame = CGRectMake(ScreenWidth - 20, 5, 20, 20)
        rightBtn.addTarget(self, action: "rightClick:", forControlEvents: .TouchUpInside)
        rightBtn.setImage(UIImage(named: rightIconName), forState: .Normal)
        rightBtn.titleLabel?.font = UIFont.systemFontOfSize(15)
        rightBtn.titleLabel?.textAlignment = NSTextAlignment.Right
        let item = UIBarButtonItem.init(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = item
        
        
    }
    //右侧标题按钮
    func setupRightTitle(rightTitle:String){
        
        
        let rightBtn = UIButton.init()
        rightBtn.frame = CGRectMake(ScreenWidth - 60, 5, 60, 20)
        rightBtn.addTarget(self, action: "rightClick:", forControlEvents: .TouchUpInside)
        rightBtn.setTitle(rightTitle, forState: .Normal)
        rightBtn.titleLabel?.font = UIFont.systemFontOfSize(15)
        rightBtn.titleLabel?.textAlignment = NSTextAlignment.Right
        let item = UIBarButtonItem.init(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = item
//        rightBtn.backgroundColor = UIColor.yellowColor()
        
        
    }
    
    //右侧带图片和标题按钮
    func setupRightTitleAndIcon(rightTitle:String,rightIconName:String){
        
        
        let rightBtn = UIButton.init()
        rightBtn.frame = CGRectMake(ScreenWidth - 60, 5, 60, 20)
        rightBtn.addTarget(self, action: "rightClick:", forControlEvents: .TouchUpInside)
        rightBtn.setImage(UIImage(named: rightIconName), forState: .Normal)
        rightBtn.setTitle(rightTitle, forState: .Normal)
        rightBtn.titleLabel?.font = UIFont.systemFontOfSize(15)
        rightBtn.titleLabel?.textAlignment = NSTextAlignment.Right
        let item = UIBarButtonItem.init(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = item
        
        
    }

    //左侧按钮点击事件
    func rightClick(sender:UIButton){
    }
    

    //左侧按钮点击事件
    func leftIconClick(sender:UIButton){
        
       
    }

    
    //左侧返回点击事件
    func leftBackClick(sender:UIButton){
        
        self.navigationController?.popViewControllerAnimated(true)
    }

}
