//
//  HomeViewController.swift
//  AppStudent
//
//  Created by Apple on 3/2/21.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let views: UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let table: UITableView = {
        let tb = UITableView()
        tb.register(CellMenu.self, forCellReuseIdentifier: "cellID")
        tb.register(HeaderTableViewCell.self, forCellReuseIdentifier: "cellIdHeader")
        tb.separatorColor = UIColor.clear
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()

    let cellIdHeader = "cellIdHeader"
    let cellID = "cellID"
    
    let arr = ["AVATA","Thông tin cơ bản", "Ngành", "Lịch sưe đăng ký", "Kích hoạt khoá học", "Danh sách mong muốn", "Hoạt động gần đây", "Quốc gia và Ngôn ngữ", "Đăng xuất"]
    let imageName = "xinh.jpg"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        }
    
    
    func setup() {
        table.delegate = self
        table.dataSource = self
        view.addSubview(views)
        views.addSubview(table)
        
        NSLayoutConstraint.activate([
            views.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            views.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            views.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            views.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            table.topAnchor.constraint(equalTo: views.topAnchor, constant: 0),
            table.leadingAnchor.constraint(equalTo: views.leadingAnchor, constant: 0),
            table.trailingAnchor.constraint(equalTo: views.trailingAnchor, constant: 0),
            table.bottomAnchor.constraint(equalTo: views.bottomAnchor, constant: 0)
        ])
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
        
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdHeader", for: indexPath) as! HeaderTableViewCell
            cell.name.text = "LÊ XUÂN NGUYÊN"
            cell.time.text = "Thời gian tạo : 20/03/2020"
            cell.imageAvata.image = UIImage(named: "xinh.jpg")
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CellMenu
        cell.imaneThumnail.image = UIImage(named: "ngoclinh.jpg")
        cell.information.text = self.arr[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row < 1 {
            return 300
        }
        return 60
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       //print(arr[indexPath.row])
    }
}

//extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return arr.count
//        }
//        return 1
//
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0{
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CellMenu
//       // cell.imaneThumnail.image = UIImage(named: "xinh.jpg")
//        cell.information.text = self.arr[indexPath.row]
//            return cell
//        }
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdHeader", for: indexPath) as! HeaderTableViewCell
//        cell.imageAvata.image = UIImage(named: "xinh.jpg")
//        return cell
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 90
//
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//       //print(arr[indexPath.row])
//    }
//
//}
