# CMake generated Testfile for 
# Source directory: /home/marco/homework-robotica/catkin_ws/src/third_party/universal_robot/ur_bringup
# Build directory: /home/marco/homework-robotica/catkin_ws/build/ur_bringup
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ur_bringup_roslaunch-check_tests_roslaunch_test.xml "/home/marco/homework-robotica/catkin_ws/build/ur_bringup/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/marco/homework-robotica/catkin_ws/build/ur_bringup/test_results/ur_bringup/roslaunch-check_tests_roslaunch_test.xml.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/marco/homework-robotica/catkin_ws/build/ur_bringup/test_results/ur_bringup" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/marco/homework-robotica/catkin_ws/build/ur_bringup/test_results/ur_bringup/roslaunch-check_tests_roslaunch_test.xml.xml' '/home/marco/homework-robotica/catkin_ws/src/third_party/universal_robot/ur_bringup/tests/roslaunch_test.xml' ")
subdirs("gtest")
