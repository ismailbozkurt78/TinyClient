//
//  TicketListView.swift
//  TinyExercise
//
//  Created by Ismail on 07/01/2017.
//  Copyright © 2017 Tiny. All rights reserved.
//

import Foundation


protocol TicketListView: class {
    func displayLoading()
    func dismissLoading()
    
    func displayTickets(_ tickets: [TicketViewModel]?)
    
    func displayError(error: Error)
}
