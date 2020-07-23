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
	/// NamespaceStatus is information about the current status of a Namespace.
	///
	struct NamespaceStatus: KubernetesResource {
		///
		/// Represents the latest available observations of a namespace's current state.
		///
		public var conditions: [core.v1.NamespaceCondition]?
		///
		/// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
		///
		public var phase: String?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [core.v1.NamespaceCondition]?, 
			phase: String?
		) {
			self.conditions = conditions
			self.phase = phase
		}
	}
}

