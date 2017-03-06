//
//  MacFontsViewController.swift
//  Lesson2Krestinin
//
//  Created by Алексей Крестинин on 05.03.17.
//  Copyright © 2017 Alexey Krestinin. All rights reserved.
//

import UIKit

class MacFontsViewController: UIViewController {

    var testt = Fonts(fontName:[])
    
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (testt.printFonts())
        
        
       tableView.dataSource = self
       tableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
// ВНИМАНИЕ! СПРОСИТЬ У НИКОЛАЯ, КАК РАБОТАЕТ ЭТА ПОДГОТОВКА! НИХРЕНА НЕ ПОНЯТНО!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // если мы переходим на resultViewCOntroller
        if let destination = segue.destination as? FontDetailsViewController,
            // и параметром является объект типа Int
            let fontToShow = sender as? String {
            destination.currentFont = fontToShow
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension MacFontsViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        
        let currentFont = testt.printFonts()[indexPath.row]
     
        performSegue(withIdentifier: "Show Result", sender: String(currentFont))
        print (currentFont)
        
    }
}

extension MacFontsViewController:UITableViewDataSource
{
    
    // этот метод запрашивает число элементов в секции таблицы
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testt.printFonts().count
    }
    // здесь логика работы с таблицей
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // запросим у таблицы ячейку с идентификатором?
        // который мы указали в сториборд
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // настроим нашу ячейку
        // row - это индекс ячейки внутри секции
        
        let strToShow = testt.printFonts()[indexPath.row]
        
        // indexPath.section - номер секции ячейки
        // зададим текст в ячейке
        cell.textLabel?.font = UIFont (name:strToShow, size: 20)
        cell.textLabel?.text = "\(indexPath.row) = \(strToShow)"
        // вернем ячейку которую настроили
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return testt.fontFamilyNames.first
       
    }

}
