//
//  File.swift
//  Crypto Currency - MVVM & SwiftUI
//
//  Created by Hamed Majdi on 2/22/24.
//

import Foundation

struct Currencies : Codable, Identifiable {
    let id = UUID()
    let asset_id : String?
    let name : String?
    let type_is_crypto : Int?
    let data_quote_start : String?
    let data_quote_end : String?
    let data_orderbook_start : String?
    let data_orderbook_end : String?
    let data_trade_start : String?
    let data_trade_end : String?
    let data_symbols_count : Int?
    let volume_1hrs_usd : Double?
    let volume_1day_usd : Double?
    let volume_1mth_usd : Double?
    let price_usd : Double?
    let id_icon : String?
    let data_start : String?
    let data_end : String?

    enum CodingKeys: String, CodingKey {

        case asset_id = "asset_id"
        case name = "name"
        case type_is_crypto = "type_is_crypto"
        case data_quote_start = "data_quote_start"
        case data_quote_end = "data_quote_end"
        case data_orderbook_start = "data_orderbook_start"
        case data_orderbook_end = "data_orderbook_end"
        case data_trade_start = "data_trade_start"
        case data_trade_end = "data_trade_end"
        case data_symbols_count = "data_symbols_count"
        case volume_1hrs_usd = "volume_1hrs_usd"
        case volume_1day_usd = "volume_1day_usd"
        case volume_1mth_usd = "volume_1mth_usd"
        case price_usd = "price_usd"
        case id_icon = "id_icon"
        case data_start = "data_start"
        case data_end = "data_end"
    }

}
