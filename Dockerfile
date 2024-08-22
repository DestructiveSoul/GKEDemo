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

# [START dockerfile]
FROM python:3.7-slim
RUN pip install flask
RUN pip install google-cloud-secret-manager
WORKDIR /app
COPY app.py /app/app.py
RUN curl -o /app/your-file.json "https://clistgacc2022.blob.core.windows.net/testcont/my-project-1470244463968-a8e9afc328a9.json?sp=r&st=2024-08-22T12:11:45Z&se=2024-08-25T20:11:45Z&spr=https&sv=2022-11-02&sr=b&sig=%2B9FKFYCumZ9%2B8hE97jLflMr1jRMssp2MnXPt844aDIM%3D"
ENV GOOGLE_APPLICATION_CREDENTIALS="/app/my-project-1470244463968-a8e9afc328a9.json"
ENTRYPOINT ["python"]
CMD ["/app/app.py"]
# [END dockerfile]
