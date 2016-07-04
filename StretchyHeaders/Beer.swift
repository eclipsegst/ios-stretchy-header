//
//  Beer.swift
//  StretchyHeaders
//
//  Created by Zhaolong Zhong on 7/4/16.
//  Copyright © 2016 Zhaolong Zhong. All rights reserved.
//

import UIKit

class Beer {
    var title: String
    var image: String
    var since: String
    
    init(title: String, image:String, since: String) {
        self.title = title
        self.image = image
        self.since = since
    }
    
    static func getTestData() -> [Beer]{
        var beers:[Beer] = []
        let bluemoon = Beer(title: "Blue Moon", image: "Bluemoon", since: "1995")
        let budlight = Beer(title: "Bud light", image: "Budlight", since: "1876")
        let budweiser = Beer(title: "Budweiser", image: "Budweiser", since: "1876")
        let coolslight = Beer(title: "Cools light", image: "Coolslight", since: "1978")
        let corona = Beer(title: "Corona", image: "Corona", since: "1925")
        let guinness = Beer(title: "Guinness", image: "Guinness", since: "1759")
        let pbr = Beer(title: "PBR", image: "PBR", since: "1844")
        let select = Beer(title: "Select", image: "Select", since: "1876")
        
        beers.append(bluemoon)
        beers.append(budlight)
        beers.append(budweiser)
        beers.append(coolslight)
        beers.append(corona)
        beers.append(guinness)
        beers.append(pbr)
        beers.append(select)
        
        return beers
    }
}
