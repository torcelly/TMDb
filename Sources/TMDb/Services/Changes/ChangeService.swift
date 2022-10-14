//
//  ChangeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

import Foundation

/// A service to fetch an up to date list of the ids that have been changed in the past 24 hours on TMDb.
public protocol ChangeService: MovieChangeService, TVShowChangeService, PersonChangeService { }
