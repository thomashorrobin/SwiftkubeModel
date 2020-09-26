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
	/// ContainerStateTerminated is a terminated state of a container.
	///
	struct ContainerStateTerminated: KubernetesResource {
		///
		/// Container's ID in the format 'docker://<container_id>'
		///
		public var containerID: String?
		///
		/// Exit status from the last termination of the container
		///
		public var exitCode: Int32
		///
		/// Time at which the container last terminated
		///
		public var finishedAt: String?
		///
		/// Message regarding the last termination of the container
		///
		public var message: String?
		///
		/// (brief) reason from the last termination of the container
		///
		public var reason: String?
		///
		/// Signal from the last termination of the container
		///
		public var signal: Int32?
		///
		/// Time at which previous execution of the container started
		///
		public var startedAt: String?
		///
		/// Default memberwise initializer
		///
		public init(
			containerID: String? = nil,
			exitCode: Int32,
			finishedAt: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			signal: Int32? = nil,
			startedAt: String? = nil
		) {
			self.containerID = containerID
			self.exitCode = exitCode
			self.finishedAt = finishedAt
			self.message = message
			self.reason = reason
			self.signal = signal
			self.startedAt = startedAt
		}
	}
}

///
/// Codable conformance
///
extension core.v1.ContainerStateTerminated {

	private enum CodingKeys: String, CodingKey {
		case containerID = "containerID"
		case exitCode = "exitCode"
		case finishedAt = "finishedAt"
		case message = "message"
		case reason = "reason"
		case signal = "signal"
		case startedAt = "startedAt"
	}

}

