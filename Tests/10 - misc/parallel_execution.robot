# Agenda :
# 1: How to run test suites
# 2: How to run tests parallely using "robotframework-pabot"
# 3: How to save results in folder of your choice
# 4: How to run tests using Single Window Bat file

# to execute all tests sequentially run this command : robot <name of the folder>  ==> robot Tests/01 - getting started/*
# this will execute all tests present in this folder one by one.

# to execute tests in parallel install "pip install robotframework-pabot"
# command : pabot --processes <num of tests to execute in parallel> <folder name> => pabot --processes 2 Tests/01 - getting started/*

# now if you want to save result of the execution in a folder of your choice
# pabot --processes <num of tests to execute in parallel> --outputdir <Folder name> <folder name>
# pabot --processes 2 --outputdir Results Tests/01 - getting started/*

# instead of writing these commands again & again we can write them in a batch file & execute them with one click
# create a folder in root directory , here i have created run.bat file take a look at it.
# later we can also use that file when running tests from jenkins. or you can directly specify commands written in run.bat in commands section of jenkins

