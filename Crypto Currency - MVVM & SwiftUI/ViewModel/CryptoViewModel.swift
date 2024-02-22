//
//  CryptoViewModel.swift
//  Crypto Currency - MVVM & SwiftUI
//
//  Created by Hamed Majdi on 2/22/24.
//

import Foundation

class CryptoListViewModel: ObservableObject {
    
    @Published var cryptoList = [CryptoViewModel]()
    
    let webService = WebService()
    
    func downloadCryptos(url: URL){
        webService.downloadCurrencies(url: url) { result in
            
            switch result{
            case .failure(let error):
                print(error)
            case .success(let cryptos):
                if let cryptos = cryptos{
                    
                    /* The reason that I'm using DispatchQueue.main.async is because I'm updating the UI
                    Since the cryptolist is a published property and it updates the main UI, I need to update the UI on the main thread
                    */
                    DispatchQueue.main.async {
                        self.cryptoList = cryptos.map(CryptoViewModel.init)
                    }
                    
                }
            }
        }
    }
}

struct CryptoViewModel{
    
    let crypto : Currencies
    
    var id : UUID{
        crypto.id
    }
    
    var asset_id: String?{
        crypto.asset_id
    }
    
    var name: String?{
        crypto.name
    }
    
    var type_is_crypto: Int?{
        crypto.type_is_crypto
    }
    
    var data_quote_start: String?{
        crypto.data_quote_start
    }
    
    var data_quote_end: String?{
        crypto.data_quote_end
    }
    
    var data_orderbook_start: String?{
        crypto.data_orderbook_start
    }
    
    var data_orderbook_end: String?{
        crypto.data_orderbook_end
    }
    
    var data_trade_start: String?{
        crypto.data_trade_start
    }
    
    var data_trade_end: String?{
        crypto.data_trade_end
    }
    
    var data_symbols_count: Int?{
        crypto.data_symbols_count
    }
    
    var volume_1hrs_usd: Double?{
        crypto.volume_1hrs_usd
    }
    
    var volume_1day_usd: Double?{
        crypto.volume_1day_usd
    }
    
    var volume_1mth_usd: Double?{
        crypto.volume_1mth_usd
    }
    
    var price_usd: Double?{
        crypto.price_usd
    }
    
    var id_icon: String?{
        crypto.id_icon
    }
    
    var data_start: String?{
        crypto.data_start
    }
    
    var data_end: String?{
        crypto.data_end
    }
    
}
