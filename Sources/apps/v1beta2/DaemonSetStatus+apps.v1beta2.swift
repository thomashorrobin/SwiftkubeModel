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

public extension apps.v1beta2 {

	///
	/// DaemonSetStatus represents the current status of a daemon set.
	///
	struct DaemonSetStatus: KubernetesResource {
		///
		/// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
		///
		public var collisionCount: Int32?
		///
		/// Represents the latest available observations of a DaemonSet's current state.
		///
		public var conditions: [apps.v1beta2.DaemonSetCondition]?
		///
		/// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		public var currentNumberScheduled: Int32
		///
		/// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		public var desiredNumberScheduled: Int32
		///
		/// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
		///
		public var numberAvailable: Int32?
		///
		/// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
		///
		public var numberMisscheduled: Int32
		///
		/// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
		///
		public var numberReady: Int32
		///
		/// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
		///
		public var numberUnavailable: Int32?
		///
		/// The most recent generation observed by the daemon set controller.
		///
		public var observedGeneration: Int64?
		///
		/// The total number of nodes that are running updated daemon pod
		///
		public var updatedNumberScheduled: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			collisionCount: Int32?, 
			conditions: [apps.v1beta2.DaemonSetCondition]?, 
			currentNumberScheduled: Int32, 
			desiredNumberScheduled: Int32, 
			numberAvailable: Int32?, 
			numberMisscheduled: Int32, 
			numberReady: Int32, 
			numberUnavailable: Int32?, 
			observedGeneration: Int64?, 
			updatedNumberScheduled: Int32?
		) {
			self.collisionCount = collisionCount
			self.conditions = conditions
			self.currentNumberScheduled = currentNumberScheduled
			self.desiredNumberScheduled = desiredNumberScheduled
			self.numberAvailable = numberAvailable
			self.numberMisscheduled = numberMisscheduled
			self.numberReady = numberReady
			self.numberUnavailable = numberUnavailable
			self.observedGeneration = observedGeneration
			self.updatedNumberScheduled = updatedNumberScheduled
		}
	}
}

