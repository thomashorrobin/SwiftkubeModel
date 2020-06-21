//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

struct Quantity: ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {
	let value: String

	init(stringLiteral value: String) {
		self.value = value
	}

	init(integerLiteral value: Int) {
		self.value = String(value)
	}

	init(floatLiteral value: Double) {
		self.value = String(value)
	}
}

extension Quantity: Codable {

	init(from decoder: Decoder) throws {
		if let value = try? decoder.singleValueContainer().decode(String.self) {
			self.value = value
		} else if let value = try? decoder.singleValueContainer().decode(Int.self) {
			self.value = String(value)
		} else {
			let value = try decoder.singleValueContainer().decode(Double.self)
			self.value = String(value)
		}
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(value)
	}
}