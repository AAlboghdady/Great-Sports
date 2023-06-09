/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Team_name_translations : Codable {
	let en : String?
	let ru : String?
	let de : String?
	let es : String?
	let fr : String?
	let zh : String?
	let tr : String?
	let el : String?
	let it : String?
	let nl : String?
	let pt : String?

	enum CodingKeys: String, CodingKey {

		case en = "en"
		case ru = "ru"
		case de = "de"
		case es = "es"
		case fr = "fr"
		case zh = "zh"
		case tr = "tr"
		case el = "el"
		case it = "it"
		case nl = "nl"
		case pt = "pt"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		en = try values.decodeIfPresent(String.self, forKey: .en)
		ru = try values.decodeIfPresent(String.self, forKey: .ru)
		de = try values.decodeIfPresent(String.self, forKey: .de)
		es = try values.decodeIfPresent(String.self, forKey: .es)
		fr = try values.decodeIfPresent(String.self, forKey: .fr)
		zh = try values.decodeIfPresent(String.self, forKey: .zh)
		tr = try values.decodeIfPresent(String.self, forKey: .tr)
		el = try values.decodeIfPresent(String.self, forKey: .el)
		it = try values.decodeIfPresent(String.self, forKey: .it)
		nl = try values.decodeIfPresent(String.self, forKey: .nl)
		pt = try values.decodeIfPresent(String.self, forKey: .pt)
	}

}