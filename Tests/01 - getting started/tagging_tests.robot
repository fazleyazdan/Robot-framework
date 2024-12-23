# when you have multiple tests in a file & you want to execute selective tests among them then we use tagging
# we tag tests with & then at the run time when executing the test we specify that tag to run selective test cases
# syntax to run test file with tags : robot --include=tag_name <path of test file>
# if you wanna tests with multiple tags : robot -i sanity -i regression <path of test file>
# the above command will execute tests having "sanity" & "regression" tag
