//
//  ViewModel.swift
//  MVVM APP
//
//  Created by Pranav Arjun on 11/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import Foundation
import UIKit

var messierViewModel: [MessierViewModel] =
    [MessierViewModel(messierDataModel: Messier1),
     MessierViewModel(messierDataModel: Messier8),
     MessierViewModel(messierDataModel: Messier57)]
 
// MARK: - #4 - View Model
 
class MessierViewModel
{
    
    // #5 - I use some private properties solely for
    // preparing data for presentation in the UI.
    
    private let messierDataModel: MessierDataModel
    
    private var imageURL: URL
    
    private var updatedDate: Date?
    
    init(messierDataModel: MessierDataModel)
    {
        self.messierDataModel = messierDataModel
        self.imageURL = URL(string: messierDataModel.imageLink)!
    }
    
    public var formalName: String {
        return "Formal name: " + messierDataModel.formalName
    }
    
    public var commonName: String {
        return "Common name: " + messierDataModel.commonName
    }
    
    // #6 - Data is made available for presentation only
    // through public getters. No direct access to Model.
    // Some getters prepare data for presentation.
    
    public var dateUpdated: String {
        
        let dateString = String(messierDataModel.updateDate.year) + "-" +
                         String(messierDataModel.updateDate.month) + "-" +
                         String(messierDataModel.updateDate.day)
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMMM dd, yyyy"
        
        if let date = dateFormatterGet.date(from: dateString) {
            updatedDate = date
            return "Updated: " + dateFormatterPrint.string(from: date)
        }
        else {
            return "There was an error decoding the string"
        }
    }
    
    // #7 - Controversial? Should this SOLELY live in the UI?
    public var textDescription: NSAttributedString {
        
        let fontAttributes = [NSAttributedString.Key.font:  UIFont(name: "Georgia", size: 14.0)!, NSAttributedString.Key.foregroundColor: UIColor.blue]
        let markedUpDescription = NSAttributedString(string: messierDataModel.description, attributes:fontAttributes)
        return markedUpDescription
        
    }
    
    public var thumbnail: String {
        return messierDataModel.thumbnail
    }
    
    // #8 - Controversial? Is passing a completion handler into the view
    // model problematic? Should I use KVO or delegation? All's I'm
    // doing is getting some NSData/Data.
 
} // end class MessierViewModel
