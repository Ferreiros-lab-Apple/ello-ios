//
//  NSErrorExtensions.swift
//  Ello
//
//  Created by Colin Gray on 4/30/2015.
//  Copyright (c) 2015 Ello. All rights reserved.
//

extension NSError {

    var elloErrorMessage: String? {
        if let info = self.userInfo,
            let elloNetworkError = info[NSLocalizedFailureReasonErrorKey] as? ElloNetworkError
        {
            return elloNetworkError.title
        }
        return nil
    }

}