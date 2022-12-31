//
// Copyright 2020 Swiftkube Project
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
/// Kubernetes v1.24.8
/// core.v1.Probe
///

import Foundation

// MARK: - core.v1.Probe

public extension core.v1 {

	///
	/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
	///
	struct Probe: KubernetesResource {
		///
		/// Exec specifies the action to take.
		///
		public var exec: core.v1.ExecAction?
		///
		/// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
		///
		public var failureThreshold: Int32?
		///
		/// GRPC specifies an action involving a GRPC port. This is a beta field and requires enabling GRPCContainerProbe feature gate.
		///
		public var grpc: core.v1.GRPCAction?
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
		/// TCPSocket specifies an action involving a TCP port.
		///
		public var tcpSocket: core.v1.TCPSocketAction?
		///
		/// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
		///
		public var terminationGracePeriodSeconds: Int64?
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
			grpc: core.v1.GRPCAction? = nil,
			httpGet: core.v1.HTTPGetAction? = nil,
			initialDelaySeconds: Int32? = nil,
			periodSeconds: Int32? = nil,
			successThreshold: Int32? = nil,
			tcpSocket: core.v1.TCPSocketAction? = nil,
			terminationGracePeriodSeconds: Int64? = nil,
			timeoutSeconds: Int32? = nil
		) {
			self.exec = exec
			self.failureThreshold = failureThreshold
			self.grpc = grpc
			self.httpGet = httpGet
			self.initialDelaySeconds = initialDelaySeconds
			self.periodSeconds = periodSeconds
			self.successThreshold = successThreshold
			self.tcpSocket = tcpSocket
			self.terminationGracePeriodSeconds = terminationGracePeriodSeconds
			self.timeoutSeconds = timeoutSeconds
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.Probe {

	private enum CodingKeys: String, CodingKey {

		case exec = "exec"
		case failureThreshold = "failureThreshold"
		case grpc = "grpc"
		case httpGet = "httpGet"
		case initialDelaySeconds = "initialDelaySeconds"
		case periodSeconds = "periodSeconds"
		case successThreshold = "successThreshold"
		case tcpSocket = "tcpSocket"
		case terminationGracePeriodSeconds = "terminationGracePeriodSeconds"
		case timeoutSeconds = "timeoutSeconds"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.exec = try container.decodeIfPresent(core.v1.ExecAction.self, forKey: .exec)
		self.failureThreshold = try container.decodeIfPresent(Int32.self, forKey: .failureThreshold)
		self.grpc = try container.decodeIfPresent(core.v1.GRPCAction.self, forKey: .grpc)
		self.httpGet = try container.decodeIfPresent(core.v1.HTTPGetAction.self, forKey: .httpGet)
		self.initialDelaySeconds = try container.decodeIfPresent(Int32.self, forKey: .initialDelaySeconds)
		self.periodSeconds = try container.decodeIfPresent(Int32.self, forKey: .periodSeconds)
		self.successThreshold = try container.decodeIfPresent(Int32.self, forKey: .successThreshold)
		self.tcpSocket = try container.decodeIfPresent(core.v1.TCPSocketAction.self, forKey: .tcpSocket)
		self.terminationGracePeriodSeconds = try container.decodeIfPresent(Int64.self, forKey: .terminationGracePeriodSeconds)
		self.timeoutSeconds = try container.decodeIfPresent(Int32.self, forKey: .timeoutSeconds)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(exec, forKey: .exec)
		try encodingContainer.encode(failureThreshold, forKey: .failureThreshold)
		try encodingContainer.encode(grpc, forKey: .grpc)
		try encodingContainer.encode(httpGet, forKey: .httpGet)
		try encodingContainer.encode(initialDelaySeconds, forKey: .initialDelaySeconds)
		try encodingContainer.encode(periodSeconds, forKey: .periodSeconds)
		try encodingContainer.encode(successThreshold, forKey: .successThreshold)
		try encodingContainer.encode(tcpSocket, forKey: .tcpSocket)
		try encodingContainer.encode(terminationGracePeriodSeconds, forKey: .terminationGracePeriodSeconds)
		try encodingContainer.encode(timeoutSeconds, forKey: .timeoutSeconds)
	}
}
