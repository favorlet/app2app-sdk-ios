//
//  App2AppStatus.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

@frozen
public enum App2AppStatus: String {
    case REQUESTED = "requested"
    case EXECUTED = "executed"
    case REVERTED = "reverted"
    case FAILED = "failed"
    case CANCELED = "canceled"
    case SUCCEED = "succeed"
}
