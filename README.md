# pincodr

## web service for indian pincodes

Pincodr exposes following JSON web services 

### GET /pin/:pin - search by pincode
    
        GET http://pincodr.abhinav.co/pin/462001
        
        [{
          "code": "462004",
          "district": "Bhopal",
          "name": "M.P. Vidhan Sabha",
          "state": "Madhya Pradesh",
          "tehsil": "Bhopal"
        },
        {
          "code": "462004",
          "district": "Bhopal",
          "name": "Vallabh Bhawan",
          "state": "Madhya Pradesh",
          "tehsil": "Bhopal"
        }]
                  

### GET /area/:area - search by area
    
        GET http://pincodr.abhinav.co/area/pilani
        
        [{
          "code": "333031",
          "district": "Jhujhunu",
          "name": "Pilani",
          "state": "Rajasthan",
          "tehsil": "Chirawa"
        }]
                  

### GET /tehsil/:tehsil & GET /taluk/:taluk - search by tehsil/taluk
    
        GET http://pincodr.abhinav.co/tehsil/narsinghgarh
        
        [{
          "code": "465669",
          "district": "Rajgarh",
          "name": "Kotra",
          "state": "Madhya Pradesh",
          "tehsil": "Narsinghgarh"
        },
        {
          "code": "465669",
          "district": "Rajgarh",
          "name": "Sonkatch",
          "state": "Madhya Pradesh",
          "tehsil": "Narsinghgarh"
        }]
                  

### GET /district/:district - search by district
    
        GET http://pincodr.abhinav.co/district/vidisha
        
        [{
          "code": "464228",
          "district": "Vidisha",
          "name": "Sironj",
          "state": "Madhya Pradesh",
          "tehsil": "Vidisha"
        },
        {
          "code": "464001",
          "district": "Vidisha",
          "name": "Vidisha",
          "state": "Madhya Pradesh",
          "tehsil": "Vidisha"
        }]
                  

### GET /search/:value - code or name starts with value 
    
        GET http://pincodr.abhinav.co/search/1220
        
        [{
          "code": "122004",
          "district": "Gurgaon",
          "name": "Sikanderpur",
          "state": "Haryana",
          "tehsil": "."
        },
        {
          "code": "122001",
          "district": "Gurgaon",
          "name": "South City I",
          "state": "Haryana",
          "tehsil": "."
        }]
                  

  

contact: [abhinav][1] | [homepage][2] | [permalink][3]

 [1]: http://twitter.com/abhinav "abhinav"
 [2]: http://abhinav.co "homepage"
 [3]: http://pincodr.abhinav.co "Permalink to pincodr - web service for Indian pincodes"

## Copyright

Copyright (c) 2012 Abhinav Saxena. See LICENSE for details.

