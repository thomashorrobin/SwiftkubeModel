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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// core.v1.PodDNSConfig
///

import Foundation

public extension core.v1 {

	///
	/// PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
	///
	struct PodDNSConfig: KubernetesResource {
		///
		/// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
		///
		public var nameservers: [String]?
		///
		/// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
		///
		public var options: [core.v1.PodDNSConfigOption]?
		///
		/// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
		///
		public var searches: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			nameservers: [String]? = nil,
			options: [core.v1.PodDNSConfigOption]? = nil,
			searches: [String]? = nil
		) {
			self.nameservers = nameservers
			self.options = options
			self.searches = searches
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PodDNSConfig {

	private enum CodingKeys: String, CodingKey {

		case nameservers = "nameservers"
		case options = "options"
		case searches = "searches"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.nameservers = try container.decodeIfPresent([String].self, forKey: .nameservers)
		self.options = try container.decodeIfPresent([core.v1.PodDNSConfigOption].self, forKey: .options)
		self.searches = try container.decodeIfPresent([String].self, forKey: .searches)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.nameservers, forKey: .nameservers)
		try container.encode(self.options, forKey: .options)
		try container.encode(self.searches, forKey: .searches)
	}

}

