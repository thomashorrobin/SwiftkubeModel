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
/// core.v1.Probe
///

import Foundation

public extension core.v1 {

	///
	/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
	///
	struct Probe: KubernetesResource {
		///
		/// One and only one of the following should be specified. Exec specifies the action to take.
		///
		public var exec: core.v1.ExecAction?
		///
		/// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
		///
		public var failureThreshold: Int32?
		///
		/// HTTPGet specifies the http request to perform.
		///
		public var httpGet: core.v1.HTTPGetAction?
		///
		/// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var initialDelaySeconds: Int32?
		///
		/// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
		///
		public var periodSeconds: Int32?
		///
		/// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
		///
		public var successThreshold: Int32?
		///
		/// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
		///
		public var tcpSocket: core.v1.TCPSocketAction?
		///
		/// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		///
		public var timeoutSeconds: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			exec: core.v1.ExecAction? = nil,
			failureThreshold: Int32? = nil,
			httpGet: core.v1.HTTPGetAction? = nil,
			initialDelaySeconds: Int32? = nil,
			periodSeconds: Int32? = nil,
			successThreshold: Int32? = nil,
			tcpSocket: core.v1.TCPSocketAction? = nil,
			timeoutSeconds: Int32? = nil
		) {
			self.exec = exec
			self.failureThreshold = failureThreshold
			self.httpGet = httpGet
			self.initialDelaySeconds = initialDelaySeconds
			self.periodSeconds = periodSeconds
			self.successThreshold = successThreshold
			self.tcpSocket = tcpSocket
			self.timeoutSeconds = timeoutSeconds
		}
	}
}

///
/// Codable conformance
///
extension core.v1.Probe {

	private enum CodingKeys: String, CodingKey {

		case exec = "exec"
		case failureThreshold = "failureThreshold"
		case httpGet = "httpGet"
		case initialDelaySeconds = "initialDelaySeconds"
		case periodSeconds = "periodSeconds"
		case successThreshold = "successThreshold"
		case tcpSocket = "tcpSocket"
		case timeoutSeconds = "timeoutSeconds"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.exec = try container.decodeIfPresent(core.v1.ExecAction.self, forKey: .exec)
		self.failureThreshold = try container.decodeIfPresent(Int32.self, forKey: .failureThreshold)
		self.httpGet = try container.decodeIfPresent(core.v1.HTTPGetAction.self, forKey: .httpGet)
		self.initialDelaySeconds = try container.decodeIfPresent(Int32.self, forKey: .initialDelaySeconds)
		self.periodSeconds = try container.decodeIfPresent(Int32.self, forKey: .periodSeconds)
		self.successThreshold = try container.decodeIfPresent(Int32.self, forKey: .successThreshold)
		self.tcpSocket = try container.decodeIfPresent(core.v1.TCPSocketAction.self, forKey: .tcpSocket)
		self.timeoutSeconds = try container.decodeIfPresent(Int32.self, forKey: .timeoutSeconds)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.exec, forKey: .exec)
		try container.encode(self.failureThreshold, forKey: .failureThreshold)
		try container.encode(self.httpGet, forKey: .httpGet)
		try container.encode(self.initialDelaySeconds, forKey: .initialDelaySeconds)
		try container.encode(self.periodSeconds, forKey: .periodSeconds)
		try container.encode(self.successThreshold, forKey: .successThreshold)
		try container.encode(self.tcpSocket, forKey: .tcpSocket)
		try container.encode(self.timeoutSeconds, forKey: .timeoutSeconds)
	}

}

