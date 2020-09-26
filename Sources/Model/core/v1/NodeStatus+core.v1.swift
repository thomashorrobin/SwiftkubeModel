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
	/// NodeStatus is information about the current status of a node.
	///
	struct NodeStatus: KubernetesResource {
		///
		/// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.
		///
		public var addresses: [core.v1.NodeAddress]?
		///
		/// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
		///
		public var allocatable: [String: Quantity]?
		///
		/// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
		///
		public var capacity: [String: Quantity]?
		///
		/// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
		///
		public var conditions: [core.v1.NodeCondition]?
		///
		/// Status of the config assigned to the node via the dynamic Kubelet config feature.
		///
		public var config: core.v1.NodeConfigStatus?
		///
		/// Endpoints of daemons running on the Node.
		///
		public var daemonEndpoints: core.v1.NodeDaemonEndpoints?
		///
		/// List of container images on this node
		///
		public var images: [core.v1.ContainerImage]?
		///
		/// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info
		///
		public var nodeInfo: core.v1.NodeSystemInfo?
		///
		/// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
		///
		public var phase: String?
		///
		/// List of volumes that are attached to the node.
		///
		public var volumesAttached: [core.v1.AttachedVolume]?
		///
		/// List of attachable volumes in use (mounted) by the node.
		///
		public var volumesInUse: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			addresses: [core.v1.NodeAddress]? = nil,
			allocatable: [String: Quantity]? = nil,
			capacity: [String: Quantity]? = nil,
			conditions: [core.v1.NodeCondition]? = nil,
			config: core.v1.NodeConfigStatus? = nil,
			daemonEndpoints: core.v1.NodeDaemonEndpoints? = nil,
			images: [core.v1.ContainerImage]? = nil,
			nodeInfo: core.v1.NodeSystemInfo? = nil,
			phase: String? = nil,
			volumesAttached: [core.v1.AttachedVolume]? = nil,
			volumesInUse: [String]? = nil
		) {
			self.addresses = addresses
			self.allocatable = allocatable
			self.capacity = capacity
			self.conditions = conditions
			self.config = config
			self.daemonEndpoints = daemonEndpoints
			self.images = images
			self.nodeInfo = nodeInfo
			self.phase = phase
			self.volumesAttached = volumesAttached
			self.volumesInUse = volumesInUse
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NodeStatus {

	private enum CodingKeys: String, CodingKey {
		case addresses = "addresses"
		case allocatable = "allocatable"
		case capacity = "capacity"
		case conditions = "conditions"
		case config = "config"
		case daemonEndpoints = "daemonEndpoints"
		case images = "images"
		case nodeInfo = "nodeInfo"
		case phase = "phase"
		case volumesAttached = "volumesAttached"
		case volumesInUse = "volumesInUse"
	}

}

