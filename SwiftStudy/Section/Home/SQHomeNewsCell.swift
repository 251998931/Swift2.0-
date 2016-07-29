//
//  SQHomeNewsCell.swift
//  SwiftStudy
//
//  Created by shu on 16/5/25.
//  Copyright © 2016年 shu. All rights reserved.
//

import UIKit

class SQHomeNewsCell: UITableViewCell {
    
    var iconImg = UIImageView()
    var titleLab = UILabel()
    var supportBtn = UIButton()
    
    var model: ProductRecommendModel? {
        didSet {
            titleLab.text = model?.title
//            supportBtn.text = "喜欢:\(model!.likesNumber!)"
//            imgView.sd_setImageWithURL(NSURL(string:  model!.imageUrl!), placeholderImage:UIImage(named: "placeHolder.jpg"))
//            listID = model!.productID!
        }
    }
    
    var iconImgStr: NSString?{
        didSet{
            
            
//            self.iconImg.image = UIImage(named: (iconImgStr?)! as String)
//            self.titleLab.text = iconImgStr
            
        }
    }

    
    private static let cellID = "SQHomeNewsCell"
    class func cellWithTableView(tableView:UITableView) -> SQHomeNewsCell{
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID) as? SQHomeNewsCell
        if(cell == nil)
        {
            cell = SQHomeNewsCell.init(style: .Default, reuseIdentifier: nil)
            cell?.selectionStyle = .None
        }
        
        
        return cell as SQHomeNewsCell!
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
        self.iconImg = UIImageView.init()
        self.iconImg.image = UIImage(named: "SignInBackImage")
        self.contentView.addSubview(self.iconImg)
        
        self.titleLab = UILabel.init()
        self.titleLab.textAlignment = NSTextAlignment.Center
        self.titleLab.font = UIFont.systemFontOfSize(16)
        self.titleLab.text = "哈哈哈"
        self.contentView.addSubview(self.titleLab)
        
        self.supportBtn = UIButton.init()
        self.supportBtn.titleLabel?.font = UIFont.systemFontOfSize(14)
        self.supportBtn.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
        self.supportBtn.titleLabel?.textAlignment = NSTextAlignment.Center
        self.supportBtn.setTitle("喜欢就给个赞吧", forState: .Normal)
        self.contentView.addSubview(self.supportBtn)
        self.supportBtn.addTarget(self, action: "supportClick:", forControlEvents: .TouchUpInside)
        
    }
    
    func supportClick(sender:UIButton){
        
        TipView.showMessage("谢谢给赞")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.iconImg.frame = CGRectMake(0, 0, ScreenWidth, 180)
        self.titleLab.frame = CGRectMake(0, CGRectGetMaxY(self.iconImg.frame), ScreenWidth, 20)
        self.supportBtn.frame = CGRectMake(0, CGRectGetMaxY(self.titleLab.frame), ScreenWidth, 20)
        self.supportBtn.center.x = self.contentView.center.x
        
//        self.iconImg.backgroundColor = UIColor.yellowColor()
//        self.titleLab.backgroundColor = UIColor.orangeColor()
//        self.supportBtn.backgroundColor = UIColor.cyanColor()
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
