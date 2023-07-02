//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Cem Bıçakcı on 2.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var tableView: UITableView!
    
    var landmartNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmakName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Eklediğimiz protokolleri viewController'a "self e eşitleyerek" veriyoruz.
        tableView.delegate = self
        tableView.dataSource = self
        
        landmartNames.append("Colosseum")
        landmartNames.append("Great Wall")
        landmartNames.append("Kremlin")
        landmartNames.append("Stonhenge")
        landmartNames.append("Tac Mahal")
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "stonehenge")!)
        landmarkImages.append(UIImage(named: "tajmahal")!)


    }
    
    //UITableViewDelegate, UITableViewDataSource protokollerini class a ekledikten sonta
    //numberOfRowsInSection, cellForRowAt fonksiyonları eklenir.
    
    //numberOfRowsInSection => kaç tane girdi olacağı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmartNames.count
    }
    
    //cellForRowAt => ne gösterecek
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //hücre oluştur
        
        let cell = UITableViewCell()
        
        //içerik ayarlayıcısı oluştur ve hücrelere içerik ekle
        var content = cell.defaultContentConfiguration()
        content.text = landmartNames[indexPath.row]
        cell.contentConfiguration = content
    
        return cell
    }
    
    //Hücrenin bir sırası seçildiğinde yapılacaklar
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //seçilen name ve image leri değişkene atıyoruz
        chosenLandmakName = landmartNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        
        //Detail ekranına geçiş
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    //segue için hazırlık. Detail sayfamızdaki değişkenlere burada ulaşabiliyoruz.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetailsVC"){
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedLandmarkName = chosenLandmakName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            
        }
    }
    
    //commit => bize tableView da editingStyle özelliği veriyor.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            self.landmartNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


}

