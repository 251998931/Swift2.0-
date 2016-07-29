//
//  SQHomeCell.swift
//  SwiftStudy
//
//  Created by shu on 16/5/25.
//  Copyright © 2016年 shu. All rights reserved.
//

import UIKit

class SQHomeCell: UITableViewCell {
    
    
    /// 好物
    var goodSomethingBtn = UIButton()
    /// 搜索
    var searchBtn = UIButton()
    /// 种草
    var plantGrassBtn = UIButton()
    /// 签到
    var signInBtn = UIButton()
    
    private static let cellID = "cellIdentifier"
    class func cellWithTableView(tableView:UITableView) -> SQHomeCell{
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID) as? SQHomeCell
        if(cell == nil)
        {
            cell = SQHomeCell.init(style: .Default, reuseIdentifier: nil)
            cell?.selectionStyle = .None
        }
       
        
        return cell as SQHomeCell!
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.whiteColor()
        
        //创建子控件
        self.setupSubviews()
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubviews()
    {
        //好物 button
        goodSomethingBtn = UIButton.init(frame: CGRectMake(24, 5, 45, 70))
        goodSomethingBtn.tag = 1
        goodSomethingBtn.setImage(UIImage(named: "GoodSomething"), forState: .Normal)
        goodSomethingBtn.setImage(UIImage(named: "GoodSomething"), forState: .Highlighted)
        goodSomethingBtn.addTarget(self, action: "clickCenter:", forControlEvents: .TouchUpInside)
        self.contentView.addSubview(goodSomethingBtn)
        //搜索button
        searchBtn = UIButton.init(frame: CGRectMake(24+45*1+32*1, 5, 45, 70))
        searchBtn.tag = 2
        searchBtn.setImage(UIImage(named: "searchLarge"), forState: .Normal)
        searchBtn.setImage(UIImage(named: "searchLarge"), forState: .Highlighted)
        searchBtn.addTarget(self, action: "clickCenter:", forControlEvents: .TouchUpInside)
        self.contentView.addSubview(searchBtn)
        //种草 button
        plantGrassBtn = UIButton.init(frame: CGRectMake(24+45*2+32*2, 5, 45, 70))
        plantGrassBtn.tag = 3
        plantGrassBtn.setImage(UIImage(named: "PlantingGrass"), forState: .Normal)
        plantGrassBtn.setImage(UIImage(named: "PlantingGrass"), forState: .Highlighted)
        plantGrassBtn.addTarget(self, action: "clickCenter:", forControlEvents: .TouchUpInside)
        self.contentView.addSubview(plantGrassBtn)
        //签到 button
        signInBtn = UIButton.init(frame: CGRectMake(24+45*3+32*3, 5, 45, 70))
        signInBtn.tag = 4
        signInBtn.setImage(UIImage(named: "SignIn"), forState: .Normal)
        signInBtn.setImage(UIImage(named: "SignIn"), forState: .Highlighted)
        signInBtn.addTarget(self, action: "clickCenter:", forControlEvents: .TouchUpInside)
        self.contentView.addSubview(signInBtn)

    }
    
    func clickCenter(sender:UIButton){
        
        let str = String(format: "tag值是%d", sender.tag)
        TipView.showMessage(str)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
