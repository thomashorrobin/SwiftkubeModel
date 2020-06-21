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

public extension apps.v1 {

	///
	/// DeploymentStrategy describes how to replace existing pods with new ones.
	///
	struct DeploymentStrategy: KubernetesResource, Codable {
	
		///
		/// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
		///
		var rollingUpdate: apps.v1.RollingUpdateDeployment?
	
		///
		/// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
		///
		var type: String?
	
	}
}
