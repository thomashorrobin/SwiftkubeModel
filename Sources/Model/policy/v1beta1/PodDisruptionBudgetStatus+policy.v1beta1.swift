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
/// policy.v1beta1.PodDisruptionBudgetStatus
///

import Foundation

public extension policy.v1beta1 {

	///
	/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
	///
	struct PodDisruptionBudgetStatus: KubernetesResource {
		///
		/// current number of healthy pods
		///
		public var currentHealthy: Int32
		///
		/// minimum desired number of healthy pods
		///
		public var desiredHealthy: Int32
		///
		/// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
		///
		public var disruptedPods: [String: Date]?
		///
		/// Number of pod disruptions that are currently allowed.
		///
		public var disruptionsAllowed: Int32
		///
		/// total number of pods counted by this disruption budget
		///
		public var expectedPods: Int32
		///
		/// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
		///
		public var observedGeneration: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			currentHealthy: Int32,
			desiredHealthy: Int32,
			disruptedPods: [String: Date]? = nil,
			disruptionsAllowed: Int32,
			expectedPods: Int32,
			observedGeneration: Int64? = nil
		) {
			self.currentHealthy = currentHealthy
			self.desiredHealthy = desiredHealthy
			self.disruptedPods = disruptedPods
			self.disruptionsAllowed = disruptionsAllowed
			self.expectedPods = expectedPods
			self.observedGeneration = observedGeneration
		}
	}
}

///
/// Codable conformance
///
extension policy.v1beta1.PodDisruptionBudgetStatus {

	private enum CodingKeys: String, CodingKey {

		case currentHealthy = "currentHealthy"
		case desiredHealthy = "desiredHealthy"
		case disruptedPods = "disruptedPods"
		case disruptionsAllowed = "disruptionsAllowed"
		case expectedPods = "expectedPods"
		case observedGeneration = "observedGeneration"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.currentHealthy = try container.decode(Int32.self, forKey: .currentHealthy)
		self.desiredHealthy = try container.decode(Int32.self, forKey: .desiredHealthy)
		self.disruptedPods = try container.decodeIfPresent([String: Date].self, forKey: .disruptedPods)
		self.disruptionsAllowed = try container.decode(Int32.self, forKey: .disruptionsAllowed)
		self.expectedPods = try container.decode(Int32.self, forKey: .expectedPods)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.currentHealthy, forKey: .currentHealthy)
		try container.encode(self.desiredHealthy, forKey: .desiredHealthy)
		try container.encode(self.disruptedPods, forKey: .disruptedPods)
		try container.encode(self.disruptionsAllowed, forKey: .disruptionsAllowed)
		try container.encode(self.expectedPods, forKey: .expectedPods)
		try container.encode(self.observedGeneration, forKey: .observedGeneration)
	}

}

