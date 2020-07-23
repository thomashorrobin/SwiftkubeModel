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

public extension certificates.v1beta1 {

	///
	/// No description
	///
	struct CertificateSigningRequestStatus: KubernetesResource {
		///
		/// If request was approved, the controller will place the issued certificate here.
		///
		public var certificate: String?
		///
		/// Conditions applied to the request, such as approval or denial.
		///
		public var conditions: [certificates.v1beta1.CertificateSigningRequestCondition]?
		///
		/// Default memberwise initializer
		///
		public init(
			certificate: String?, 
			conditions: [certificates.v1beta1.CertificateSigningRequestCondition]?
		) {
			self.certificate = certificate
			self.conditions = conditions
		}
	}
}

