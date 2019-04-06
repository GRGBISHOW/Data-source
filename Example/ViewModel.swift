//
//  ViewModel.swift
//  DataSource
//
//  Created by Gurung Bishow on 6/4/19.
//  Copyright © 2019 Gurung Bishow. All rights reserved.
//

import Foundation
import RxSwift

struct DataSource{
    static let userDataSource =
        ThirdPartyClientsDataSource<Void, User>(withPath: "https://reqres.in/api/users/2", HTTPMethod: .get).generate()
}

class ViewModel {
     private var disposeBag = DisposeBag()
    private var dataSource: DataSourceClosure<Void,User>!
    init(withDatasource ds: @escaping DataSourceClosure<Void,User>) {
        dataSource = ds
    }
    
    func getUser() {
        dataSource(()).subscribe(onSuccess: { (profile) in
            print(profile.firstName)
        }) { (err) in
            print(err.localizedDescription)
        }.disposed(by: disposeBag)
        
    }
}
