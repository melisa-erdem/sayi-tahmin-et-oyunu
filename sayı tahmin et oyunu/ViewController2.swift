//
//  ViewController2.swift
//  sayı tahmin et oyunu
//
//  Created by Melisa Erdem on 2.02.2024.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tahminGiriniz: UITextField!
    @IBOutlet weak var yardim: UILabel!
    @IBOutlet weak var kalanHak: UILabel!
    
    var rastgeleSayi:Int?
    var kalanHaksayisi = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rastgeleSayi = Int(arc4random_uniform(100))
        print("Rastgele Sayi: \(rastgeleSayi!)")

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool{
            let gidilecekVC = segue.destination as? ViewController3
            gidilecekVC?.sonuc = gelenVeri
        }
    }
    @IBAction func tahminEt(_ sender: Any) {
        
        kalanHaksayisi = kalanHaksayisi - 1
        
        yardim.isHidden = false
        
        if let veri = tahminGiriniz.text {
            if let tahmin = Int(veri){
                if kalanHaksayisi != 0 {
                    if tahmin == rastgeleSayi! {
                        let sonuc = true
                        performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                    }
                    if tahmin > rastgeleSayi! {
                        yardim.text = "AZALT"
                        kalanHak.text = "\(kalanHaksayisi)"
                    }
                    if tahmin < rastgeleSayi! {
                        yardim.text = "ARTTIR"
                        kalanHak.text = "\(kalanHaksayisi)"
                        
                    }
                }else{
                    //Sayfa Geçişi
                    let sonuc = false
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                }
                tahminGiriniz.text = ""
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
