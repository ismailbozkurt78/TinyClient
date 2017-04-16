//
//  TicketListModuleBuilder.swift
//  TinyExercise
//
//  Created by Ismail on 07/01/2017.
//  Copyright © 2017 Tiny. All rights reserved.
//

import UIKit
import TinyNetworking

private let kTicketListModuleStoryboardName = "TicketList"


class TicketListModuleBuilder: NSObject {
    func buildTicketlistModule() -> UIViewController{
        let restClient: RestClient = UrlSessionRestClient()
        let service = TicketDefaultService(restClient: restClient)
        let interactor: TicketListInteractor = TicketListDefaultInteractor(service: service)
        
        let storyboard = UIStoryboard(name: kTicketListModuleStoryboardName,
                                      bundle: Bundle.main)
        let viewControllerName = String(describing: TicketListTableViewController.self)
        let ticketListViewController = storyboard.instantiateViewController(withIdentifier: viewControllerName) as! TicketListTableViewController
        
        let eventHandler: TicketListEventHandler = TicketListPresenter(view: ticketListViewController, interactor: interactor)
        ticketListViewController.eventHandler = eventHandler        
        
        return ticketListViewController
    }
}
