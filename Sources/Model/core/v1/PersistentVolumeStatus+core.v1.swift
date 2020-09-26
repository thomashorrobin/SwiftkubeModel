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

public extension core.v1 {

	///
	/// PersistentVolumeStatus is the current status of a persistent volume.
	///
	struct PersistentVolumeStatus: KubernetesResource {
		///
		/// A human-readable message indicating details about why the volume is in this state.
		///
		public var message: String?
		///
		/// Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
		///
		public var phase: String?
		///
		/// Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
		///
		public var reason: String?
		///
		/// Default memberwise initializer
		///
		public init(
			message: String? = nil,
			phase: String? = nil,
			reason: String? = nil
		) {
			self.message = message
			self.phase = phase
			self.reason = reason
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PersistentVolumeStatus {

	private enum CodingKeys: String, CodingKey {
		case message = "message"
		case phase = "phase"
		case reason = "reason"
	}

}

