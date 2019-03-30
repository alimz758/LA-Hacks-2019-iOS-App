//
//  ViewController.swift
//  LA-HACKS-2019
//
//  Created by ali mirabzadeh on 3/29/19.
//  Copyright © 2019 AMZ Development. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import Firebase
import SwiftyJSON


class ViewController: UIViewController, CLLocationManagerDelegate {

    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    //my API ID after I signed-up at https://openweathermap.org/appid, you can get yours for free from there
    let APP_ID = "e927705a6eca5a070aea02c1999329c78"
    //create an object of locationManager
    let locationManager = CLLocationManager()
    //create an object of data model
    let weatherDataModel = WeatherDataModel()
    @IBOutlet weak var currentLocationTemp: UILabel!
    @IBOutlet weak var weatherIconImage: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    
    @IBOutlet weak var weatherStatus: UILabel!
    
    @IBAction func weatherListButton(_ sender: Any) {
    }
    @IBAction func addNewWeatherDestination(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Set up the location manager here.
        //use delegate to be able to access the data from CLLlocationManager that has been written by Apple in WeatherViewController, this app
        locationManager.delegate=self
        //get the accuracy for the weather app, hundred meter is the best for usage of this app
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        //get the permission to use GPS from the user, you need to modify the plist for the message to pop-up
        locationManager.requestWhenInUseAuthorization()
        //this method causes the location manager to obtain an initial location
        locationManager.startUpdatingLocation()
        
    }
    //MARK: - Networking
    /***************************************************************/
    //getWeatherData method:
    func getWeatherData(url: String, parameters: [String : String])
    {
        //get request from the url, openWeatherApp, and parameters which is lon, lat, and API_ID
        Alamofire.request(url, method: .get , parameters: parameters).responseJSON
            {
                //the result form the request would be stored in responnse
                response in
                //if the response from the request was successful
                if response.result.isSuccess
                {
                    //store the actual value of response in a JSON type const called weatherJSON
                    let weatherJSON: JSON = JSON(response.result.value!)
                    //call updateWeatherData to pasrse the data from the request
                    self.updateWeatherData(json: weatherJSON)
                }
                    //if it failed in request
                else
                {
                    //error handling
                    self.cityName.text = "Connection Issues!"
                }
        }
    }
    //MARK: - JSON Parsing
    /***************************************************************/
    //updateWeatherData method:
    func updateWeatherData(json: JSON)
    {
        //get the temp from the JSON file, you can use JSONOnlineEditor to easily navigate through the file to get to the desired value
        if let temp = json["main"]["temp"].double
        {
            weatherDataModel.temprature = Int(temp - 273.15)
            weatherDataModel.city = json["name"].stringValue
            weatherDataModel.condition = json["weather"][0]["id"].intValue
            weatherDataModel.weatherIconName = weatherDataModel.updateWeatherIcon(condition:  weatherDataModel.condition)
            updateUIWithWeatherData()
        }
        else
        {
            
            self.cityName.text = "Weather Unavailable!"
        }
    }
    //MARK: - UI Updates
    /***************************************************************/
    //updateUIWithWeatherData method:
    func updateUIWithWeatherData()
    {
        cityName.text = weatherDataModel.city
        currentLocationTemp.text = String(weatherDataModel.temprature)
        weatherIconImage.image = UIImage(named: weatherDataModel.weatherIconName)
    }
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    //didUpdateLocations method:
    //this method would get activated once the location manager has found the location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //locationS is an array of data, we look for the most accurate one which is the last one
        let lastLocation = locations[locations.count - 1 ]
        //checj whether  the location is valid
        if lastLocation.horizontalAccuracy > 0
        {
            locationManager.stopUpdatingLocation()//to stop draining energy
            //store the longitude and latitude
            let long = String (lastLocation.coordinate.longitude)
            let lat = String( lastLocation.coordinate.latitude)
            //make a dictionary for to store long, lat, and API ID
            let locationDic : [String : String] = ["lat" : lat, "lon" : long , "appid" : APP_ID]
            //http request process
            getWeatherData(url: WEATHER_URL, parameters: locationDic)
        }
        
    }
    //didFailWithError method:
    //when there is an error to retrieve the location
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        //the app would write an error
        cityName.text = "Location Unavailable!"
    }
}
