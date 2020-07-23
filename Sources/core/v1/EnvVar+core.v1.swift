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
	/// EnvVar represents an environment variable present in a Container.
	///
	struct EnvVar: KubernetesResource {
		///
		/// Name of the environment variable. Must be a C_IDENTIFIER.
		///
		public var name: String
		///
		/// Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
		///
		public var value: String?
		///
		/// Source for the environment variable's value. Cannot be used if value is not empty.
		///
		public var valueFrom: core.v1.EnvVarSource?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String, 
			value: String?, 
			valueFrom: core.v1.EnvVarSource?
		) {
			self.name = name
			self.value = value
			self.valueFrom = valueFrom
		}
	}
}

