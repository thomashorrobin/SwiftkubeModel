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

public extension auditregistration.v1alpha1 {

	///
	/// Webhook holds the configuration of the webhook
	///
	struct Webhook: KubernetesResource {
		///
		/// ClientConfig holds the connection parameters for the webhook required
		///
		public var clientConfig: auditregistration.v1alpha1.WebhookClientConfig
		///
		/// Throttle holds the options for throttling the webhook
		///
		public var throttle: auditregistration.v1alpha1.WebhookThrottleConfig?
		///
		/// Default memberwise initializer
		///
		public init(
			clientConfig: auditregistration.v1alpha1.WebhookClientConfig,
			throttle: auditregistration.v1alpha1.WebhookThrottleConfig? = nil
		) {
			self.clientConfig = clientConfig
			self.throttle = throttle
		}
	}
}

///
/// Codable conformance
///
extension auditregistration.v1alpha1.Webhook {

	private enum CodingKeys: String, CodingKey {
		case clientConfig = "clientConfig"
		case throttle = "throttle"
	}

}

