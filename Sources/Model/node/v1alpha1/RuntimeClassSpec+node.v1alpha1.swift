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
/// node.v1alpha1.RuntimeClassSpec
///

import Foundation

public extension node.v1alpha1 {

	///
	/// RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
	///
	struct RuntimeClassSpec: KubernetesResource {
		///
		/// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.
		///
		public var overhead: node.v1alpha1.Overhead?
		///
		/// RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.
		///
		public var runtimeHandler: String
		///
		/// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
		///
		public var scheduling: node.v1alpha1.Scheduling?
		///
		/// Default memberwise initializer
		///
		public init(
			overhead: node.v1alpha1.Overhead? = nil,
			runtimeHandler: String,
			scheduling: node.v1alpha1.Scheduling? = nil
		) {
			self.overhead = overhead
			self.runtimeHandler = runtimeHandler
			self.scheduling = scheduling
		}
	}
}

///
/// Codable conformance
///
extension node.v1alpha1.RuntimeClassSpec {

	private enum CodingKeys: String, CodingKey {
		case overhead = "overhead"
		case runtimeHandler = "runtimeHandler"
		case scheduling = "scheduling"
	}

}
