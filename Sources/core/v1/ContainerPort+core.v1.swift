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
	/// ContainerPort represents a network port in a single container.
	///
	struct ContainerPort: KubernetesResource {
		///
		/// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
		///
		public var containerPort: Int32

		///
		/// What host IP to bind the external port to.
		///
		public var hostIP: String?

		///
		/// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
		///
		public var hostPort: Int32?

		///
		/// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
		///
		public var name: String?

		///
		/// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
		///
		public var `protocol`: String?

	}
}

