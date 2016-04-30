//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Joshua Bates on 4/28/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDiameter: UILabel!
    @IBOutlet weak var planetDayLength: UILabel!
    @IBOutlet weak var planetDistanceSun: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithPlanet(planet: Planet) {
        planetName.text = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        planetDiameter.text = "\(planet.diameter)"
        planetDayLength.text = "\(planet.dayLength) hours"
        planetDistanceSun.text = "\(planet.millionKMsFromSun) 10^6 km"
        
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
