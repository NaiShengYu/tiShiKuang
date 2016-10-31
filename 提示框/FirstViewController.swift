//
//  FirstViewController.swift
//  提示框
//
//  Created by 俞乃胜 on 16/5/30.
//  Copyright © 2016年 俞乃胜. All rights reserved.
//

import UIKit
let height = UIScreen.mainScreen().bounds.size.height
let width = UIScreen.mainScreen().bounds.size.width

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var MyTable :UITableView!
    override func viewDidLoad() {
         super.viewDidLoad()
        self.MyTable = UITableView(frame:CGRectMake(0, 0, width, height),style:UITableViewStyle.Grouped)
        self.MyTable.delegate = self
        self.MyTable.dataSource = self
       //self.MyTable .registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.MyTable.registerNib(UINib(nibName: "SuiBianTableViewCell",bundle: nil) , forCellReuseIdentifier:"suibian")
      //  self.MyTable .registerNib(SuiBianTableViewCell.awakeFromNib(), forCellReuseIdentifier: "suibian")
        self.view.addSubview(self.MyTable)
        
        self.view.backgroundColor = UIColor.whiteColor()
        let but = UIButton()
        but.frame = CGRectMake(0, 0, 100, 100)
        but.backgroundColor = UIColor.blueColor()
        but.addTarget(self, action:#selector(click(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(but)
    
        let VC = ViewController()
        VC.dlog()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("suibian", forIndexPath: indexPath) as!SuiBianTableViewCell
        cell.zhanghao.text = "俞乃胜"
        cell.Huoquyanzhengma.addTarget(self, action:#selector(huoqu), forControlEvents: UIControlEvents.TouchUpInside)
        //cell.textLabel?.text = "cell"
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("我们点击了第",indexPath.section,"区第",indexPath.row,"行")
        
        self.presentViewController(SecondViewController(), animated:true, completion:nil)
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100;
    }
    func huoqu(){
        print("获取验证吗")
    
    
    }
    func click(but: UIButton) {
        print("调用了======");
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
