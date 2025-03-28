# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "minitest/autorun"
require "minitest/focus"
require "webmock/minitest"

require "googleauth"

##
# A simple in-memory implementation of TokenStore
# for UserAuthorizer initialization when testing
class TestTokenStore
    def initialize
        @tokens = {}
    end

    def load id
        @tokens[id]
    end

    def store id, token
        @tokens[id] = token
    end

    def delete id
        @tokens.delete id
    end
end