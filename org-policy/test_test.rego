package diamondlightsource_test

import data.diamondlightsource
import future.keywords

# Recommended pattern for naming:
# Tests for foo.rego are stored in foo_test.rego
# Test cases within *_test.rego are named test_*
# Unfinished test cases to be skipped are named todo_*
# For linter, To format all code in this directory run opa fmt ./* --write

test_default_disallowed if {
	not diamondlightsource.hello_world with input as {}
}

test_hello_world_if_hello_world if {
	diamondlightsource.hello_world with input as {"hello": "world"}
}

test_not_hello_world_if_hello_notworld if {
	not diamondlightsource.hello_world with input as {"hello": "earth"}
}
