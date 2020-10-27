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
/// policy.v1beta1.FSGroupStrategyOptions
///

import Foundation

public extension policy.v1beta1 {

	///
	/// FSGroupStrategyOptions defines the strategy type and options used to create the strategy.
	///
	struct FSGroupStrategyOptions: KubernetesResource {
		///
		/// ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.
		///
		public var ranges: [policy.v1beta1.IDRange]?
		///
		/// rule is the strategy that will dictate what FSGroup is used in the SecurityContext.
		///
		public var rule: String?
		///
		/// Default memberwise initializer
		///
		public init(
			ranges: [policy.v1beta1.IDRange]? = nil,
			rule: String? = nil
		) {
			self.ranges = ranges
			self.rule = rule
		}
	}
}

///
/// Codable conformance
///
extension policy.v1beta1.FSGroupStrategyOptions {

	private enum CodingKeys: String, CodingKey {
		case ranges = "ranges"
		case rule = "rule"
	}

}
