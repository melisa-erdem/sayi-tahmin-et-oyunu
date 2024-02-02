//
//  ViewController3.swift
//  sayı tahmin et oyunu
//
//  Created by Melisa Erdem on 2.02.2024.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var imageViewSonuc: UIImageView!
    
    var sonuc:Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        print("Sonuc: \(sonuc!)")
        if sonuc == true {
            labelSonuc.text = "KAZANDINIZ"
            imageViewSonuc.image = UIImage(named: "mutlu_resim")
        }else{
            labelSonuc.text = "KAYBETTİNİZ"
            imageViewSonuc.image = UIImage(named: "uzgun_resim")
        }
    }
    
    @IBAction func tekrarOyna(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
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
