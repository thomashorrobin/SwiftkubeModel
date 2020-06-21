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
	/// SELinuxOptions are the labels to be applied to the container
	///
	struct SELinuxOptions: KubernetesResource, Codable {
	
		///
		/// Level is SELinux level label that applies to the container.
		///
		var level: String?
	
		///
		/// Role is a SELinux role label that applies to the container.
		///
		var role: String?
	
		///
		/// Type is a SELinux type label that applies to the container.
		///
		var type: String?
	
		///
		/// User is a SELinux user label that applies to the container.
		///
		var user: String?
	
	}
}
