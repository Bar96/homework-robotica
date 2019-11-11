#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/marco/homework-robotica/catkin_ws/src/third_party/easy_handeye/easy_handeye"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/marco/homework-robotica/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/marco/homework-robotica/catkin_ws/install/lib/python2.7/dist-packages:/home/marco/homework-robotica/catkin_ws/build/easy_handeye/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/marco/homework-robotica/catkin_ws/build/easy_handeye" \
    "/usr/bin/python2" \
    "/home/marco/homework-robotica/catkin_ws/src/third_party/easy_handeye/easy_handeye/setup.py" \
    build --build-base "/home/marco/homework-robotica/catkin_ws/build/easy_handeye" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/marco/homework-robotica/catkin_ws/install" --install-scripts="/home/marco/homework-robotica/catkin_ws/install/bin"
