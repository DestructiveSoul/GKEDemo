# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# [START hello-app]
from flask import Flask
#from google.cloud import secretmanager

#def access_secret_version(project_id, secret_id, version_id="latest"):
#    client = secretmanager.SecretManagerServiceClient()
#    name = f"projects/828058244797/secrets/GKEDemo/versions/1"
#    response = client.access_secret_version(name=name)
#    return response.payload.data.decode('UTF-8')

app = Flask('hello-cloudbuild')

@app.route('/')
def hello():
  #project_id = "your-project-id"
  #secret_id = "your-secret-id"
  #secret_value = access_secret_version(project_id, secret_id)
  return "Hello World!\n"

if __name__ == '__main__':
  app.run(host = '0.0.0.0', port = 8080)
# [END hello-app]
