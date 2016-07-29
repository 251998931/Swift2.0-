//
//  PCH.swift
//  SwiftStudy
//
//  Created by shu on 16/5/24.
//  Copyright © 2016年 shu. All rights reserved.
//

import UIKit

public let ScreenHeight = UIScreen.mainScreen().bounds.size.height
public let ScreenWidth = UIScreen.mainScreen().bounds.size.width

//自定义LOG
func SQLog<T>(message: T, fileName: String = __FILE__, methodName: String =  __FUNCTION__, lineNumber: Int = __LINE__)
{
    #if DEBUG
        let str : String = (fileName as NSString).pathComponents.last!.stringByReplacingOccurrencesOfString("swift", withString: "")
        print("\(str)\(methodName)[\(lineNumber)]:\(message)")
    #endif
}
