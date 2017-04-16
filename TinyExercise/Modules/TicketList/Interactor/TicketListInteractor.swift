//
//  TicketListInteractor.swift
//  TinyExercise
//
//  Created by Ismail on 07/01/2017.
//  Copyright © 2017 Tiny. All rights reserved.
//

import UIKit

protocol TicketListInteractor {
    func fetchTickets(completion: @escaping TicketServiceFetchTicketCompletion)
    func cancelFetchTicketCalls()
}
