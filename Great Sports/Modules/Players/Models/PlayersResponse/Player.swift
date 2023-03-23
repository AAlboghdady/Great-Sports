/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Player : Codable {
	let id : String?
	let sport_id : String?
	let slug : String?
	let name : String?
	let name_translations : Name_translations?
	let name_short : String?
	let photo : String?
	let position : String?
	let position_name : String?
	let weight : String?
	let age : String?
	let date_birth_at : String?
	let height : String?
	let shirt_number : String?
	let preferred_foot : String?
	let nationality_code : String?
	let flag : String?
	let market_currency : String?
	let market_value : String?
	let contract_until : String?
	let rating : String?
	let characteristics : Characteristics?
	let ability : [Ability]?
	let team_id : String?
	let team_category_id : String?
	let team_venue_id : String?
	let team_manager_id : String?
	let team_slug : String?
	let team_name : String?
	let team_logo : String?
	let team_name_translations : Team_name_translations?
	let team_name_short : String?
	let team_name_full : String?
	let team_name_code : String?
	let team_has_sub : String?
	let team_gender : String?
	let team_is_nationality : String?
	let team_country_code : String?
	let team_country : String?
	let team_flag : String?
	let team_foundation : String?
	let updated : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case sport_id = "sport_id"
		case slug = "slug"
		case name = "name"
		case name_translations = "name_translations"
		case name_short = "name_short"
		case photo = "photo"
		case position = "position"
		case position_name = "position_name"
		case weight = "weight"
		case age = "age"
		case date_birth_at = "date_birth_at"
		case height = "height"
		case shirt_number = "shirt_number"
		case preferred_foot = "preferred_foot"
		case nationality_code = "nationality_code"
		case flag = "flag"
		case market_currency = "market_currency"
		case market_value = "market_value"
		case contract_until = "contract_until"
		case rating = "rating"
		case characteristics = "characteristics"
		case ability = "ability"
		case team_id = "team_id"
		case team_category_id = "team_category_id"
		case team_venue_id = "team_venue_id"
		case team_manager_id = "team_manager_id"
		case team_slug = "team_slug"
		case team_name = "team_name"
		case team_logo = "team_logo"
		case team_name_translations = "team_name_translations"
		case team_name_short = "team_name_short"
		case team_name_full = "team_name_full"
		case team_name_code = "team_name_code"
		case team_has_sub = "team_has_sub"
		case team_gender = "team_gender"
		case team_is_nationality = "team_is_nationality"
		case team_country_code = "team_country_code"
		case team_country = "team_country"
		case team_flag = "team_flag"
		case team_foundation = "team_foundation"
		case updated = "updated"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		sport_id = try values.decodeIfPresent(String.self, forKey: .sport_id)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		name_translations = try values.decodeIfPresent(Name_translations.self, forKey: .name_translations)
		name_short = try values.decodeIfPresent(String.self, forKey: .name_short)
		photo = try values.decodeIfPresent(String.self, forKey: .photo)
		position = try values.decodeIfPresent(String.self, forKey: .position)
		position_name = try values.decodeIfPresent(String.self, forKey: .position_name)
		weight = try values.decodeIfPresent(String.self, forKey: .weight)
		age = try values.decodeIfPresent(String.self, forKey: .age)
		date_birth_at = try values.decodeIfPresent(String.self, forKey: .date_birth_at)
		height = try values.decodeIfPresent(String.self, forKey: .height)
		shirt_number = try values.decodeIfPresent(String.self, forKey: .shirt_number)
		preferred_foot = try values.decodeIfPresent(String.self, forKey: .preferred_foot)
		nationality_code = try values.decodeIfPresent(String.self, forKey: .nationality_code)
		flag = try values.decodeIfPresent(String.self, forKey: .flag)
		market_currency = try values.decodeIfPresent(String.self, forKey: .market_currency)
		market_value = try values.decodeIfPresent(String.self, forKey: .market_value)
		contract_until = try values.decodeIfPresent(String.self, forKey: .contract_until)
		rating = try values.decodeIfPresent(String.self, forKey: .rating)
		characteristics = try values.decodeIfPresent(Characteristics.self, forKey: .characteristics)
		ability = try values.decodeIfPresent([Ability].self, forKey: .ability)
		team_id = try values.decodeIfPresent(String.self, forKey: .team_id)
		team_category_id = try values.decodeIfPresent(String.self, forKey: .team_category_id)
		team_venue_id = try values.decodeIfPresent(String.self, forKey: .team_venue_id)
		team_manager_id = try values.decodeIfPresent(String.self, forKey: .team_manager_id)
		team_slug = try values.decodeIfPresent(String.self, forKey: .team_slug)
		team_name = try values.decodeIfPresent(String.self, forKey: .team_name)
		team_logo = try values.decodeIfPresent(String.self, forKey: .team_logo)
		team_name_translations = try values.decodeIfPresent(Team_name_translations.self, forKey: .team_name_translations)
		team_name_short = try values.decodeIfPresent(String.self, forKey: .team_name_short)
		team_name_full = try values.decodeIfPresent(String.self, forKey: .team_name_full)
		team_name_code = try values.decodeIfPresent(String.self, forKey: .team_name_code)
		team_has_sub = try values.decodeIfPresent(String.self, forKey: .team_has_sub)
		team_gender = try values.decodeIfPresent(String.self, forKey: .team_gender)
		team_is_nationality = try values.decodeIfPresent(String.self, forKey: .team_is_nationality)
		team_country_code = try values.decodeIfPresent(String.self, forKey: .team_country_code)
		team_country = try values.decodeIfPresent(String.self, forKey: .team_country)
		team_flag = try values.decodeIfPresent(String.self, forKey: .team_flag)
		team_foundation = try values.decodeIfPresent(String.self, forKey: .team_foundation)
		updated = try values.decodeIfPresent(String.self, forKey: .updated)
	}

}
