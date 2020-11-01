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
/// core.v1.PersistentVolumeClaimStatus
///

import Foundation

public extension core.v1 {

	///
	/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
	///
	struct PersistentVolumeClaimStatus: KubernetesResource {
		///
		/// AccessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
		///
		public var accessModes: [String]?
		///
		/// Represents the actual resources of the underlying volume.
		///
		public var capacity: [String: Quantity]?
		///
		/// Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
		///
		public var conditions: [core.v1.PersistentVolumeClaimCondition]?
		///
		/// Phase represents the current phase of PersistentVolumeClaim.
		///
		public var phase: String?
		///
		/// Default memberwise initializer
		///
		public init(
			accessModes: [String]? = nil,
			capacity: [String: Quantity]? = nil,
			conditions: [core.v1.PersistentVolumeClaimCondition]? = nil,
			phase: String? = nil
		) {
			self.accessModes = accessModes
			self.capacity = capacity
			self.conditions = conditions
			self.phase = phase
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PersistentVolumeClaimStatus {

	private enum CodingKeys: String, CodingKey {

		case accessModes = "accessModes"
		case capacity = "capacity"
		case conditions = "conditions"
		case phase = "phase"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.accessModes = try container.decodeIfPresent([String].self, forKey: .accessModes)
		self.capacity = try container.decodeIfPresent([String: Quantity].self, forKey: .capacity)
		self.conditions = try container.decodeIfPresent([core.v1.PersistentVolumeClaimCondition].self, forKey: .conditions)
		self.phase = try container.decodeIfPresent(String.self, forKey: .phase)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.accessModes, forKey: .accessModes)
		try container.encode(self.capacity, forKey: .capacity)
		try container.encode(self.conditions, forKey: .conditions)
		try container.encode(self.phase, forKey: .phase)
	}

}

