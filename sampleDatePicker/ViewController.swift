//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by RIho OKubo on 2016/04/28.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //選択肢を日付のみにセット
        
        myDatePicker.datePickerMode =
        UIDatePickerMode.Date
        
        //初期の日付を設定（デフォルトだと今日になってる）
        let df = NSDateFormatter()
        
        //日付のフォーマットを指定
        df.dateFormat = "yyyy/MM/dd"
        
        //2016/04/01を指定
        myDatePicker.date = df.dateFromString("2016/04/01")!
        
        //選択肢の範囲を指定する
        myDatePicker.minimumDate =
            df.dateFromString("2016/01/01")
        myDatePicker.maximumDate =
            df.dateFromString("2016/12/31")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

