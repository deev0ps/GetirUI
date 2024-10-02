//
//  Kategori.swift
//  Odev6
//
//  Created by Rasim Egi on 29.09.2024.
//

import Foundation

class Kategori {
    
    var kategori_id : Int?
    var kategori_isim: String?
    var kategori_resim : String?
    
    init(kategori_id:Int,kategori_isim:String?,kategori_resim: String){
        self.kategori_id = kategori_id
        self.kategori_isim = kategori_isim
        self.kategori_resim = kategori_resim
    }
}
