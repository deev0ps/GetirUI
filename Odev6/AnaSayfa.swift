//
//  ViewController.swift
//  Odev6
//
//  Created by Rasim Egi on 27.09.2024.
//

import UIKit

class AnaSayfa: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var kategoriCollectionView: UICollectionView!
    var kategoriListesi = [Kategori]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBarÖzelleştir()
        collectionViewAttributes()
        kategorileriEkle()

        kategoriCollectionView.delegate = self
        kategoriCollectionView.dataSource = self
       
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kategoriListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let kategori = kategoriListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategoriCell", for: indexPath) as! KategorilerCell
        
        cell.imageview.image = UIImage(named: kategori.kategori_resim!)
        cell.label.text = kategori.kategori_isim
        
        cell.layer.borderColor = UIColor.lightGray.cgColor //layer hücrenin arkasına erişiyor
        cell.layer.borderWidth = 0.3 //genişliği
        cell.layer.cornerRadius = 10.0 //köşe kıvrımı ekle
        
        return cell
    }
    
    @objc func sepeteGit() {
        
    }
    
    func navBarÖzelleştir() {
        navigationItem.title = "getir"
        
        let appearence = UINavigationBarAppearance()
    
        appearence.backgroundColor = UIColor(named: "navBarMor")
        appearence.titleTextAttributes = [.foregroundColor: UIColor(named: "navBarSari")! , .font: UIFont(name: "Montserrat-Bold", size: 28)! ]
        
        navigationController?.navigationBar.standardAppearance = appearence
        navigationController?.navigationBar.scrollEdgeAppearance = appearence
        navigationController?.navigationBar.compactAppearance = appearence
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(sepeteGit))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(sepeteGit))

        navigationItem.leftBarButtonItem?.tintColor = .white
    }
    func collectionViewAttributes() {
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 15
        
        let ekranGenisligi = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenisligi - 50 ) / 3
        tasarim.itemSize = CGSize(width: itemGenislik, height:itemGenislik * 1.2)
        kategoriCollectionView.collectionViewLayout = tasarim
        
    }
        func kategorileriEkle() {
        let k1 = Kategori(kategori_id: 1, kategori_isim: "Yeni Ürün", kategori_resim: "newicon")
        let k2 = Kategori(kategori_id: 2, kategori_isim: "Fırından", kategori_resim: "firindan")
        let k3 = Kategori(kategori_id: 3, kategori_isim: "Su", kategori_resim: "su")
        let k4 = Kategori(kategori_id: 4, kategori_isim: "Meyve & Sebze", kategori_resim:"sebze")
        let k5 = Kategori(kategori_id: 5, kategori_isim: "Atıştırmalık", kategori_resim: "misirgevregi")
        let k6 = Kategori(kategori_id: 6, kategori_isim: "Dondurma", kategori_resim:"dondurma")
        let k7 = Kategori(kategori_id: 7, kategori_isim: "Yiyecek", kategori_resim: "yiyecek")
        let k8 = Kategori(kategori_id: 8, kategori_isim: "İçecek", kategori_resim: "icecek")
        let k9 = Kategori(kategori_id: 9, kategori_isim: "Temel Gıda", kategori_resim: "temelgida")
        let k10 = Kategori(kategori_id: 10, kategori_isim: "Kişisel Bakım", kategori_resim: "kisiselbakim")
        let k11 = Kategori(kategori_id: 11, kategori_isim: "Evcil Hayvan", kategori_resim: "evcilhayvan")
            
            kategoriListesi.append(k1)
            kategoriListesi.append(k2)
            kategoriListesi.append(k3)
            kategoriListesi.append(k4)
            kategoriListesi.append(k5)
            kategoriListesi.append(k6)
            kategoriListesi.append(k7)
            kategoriListesi.append(k8)
            kategoriListesi.append(k9)
            kategoriListesi.append(k10)
            kategoriListesi.append(k11)
    }
}

