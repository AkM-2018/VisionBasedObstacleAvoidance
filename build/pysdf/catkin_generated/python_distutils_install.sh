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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/akhil-manoj/drdo/src/pysdf"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/akhil-manoj/drdo/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/akhil-manoj/drdo/install/lib/python2.7/dist-packages:/home/akhil-manoj/drdo/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/akhil-manoj/drdo/build" \
    "/usr/bin/python2" \
    "/home/akhil-manoj/drdo/src/pysdf/setup.py" \
     \
    build --build-base "/home/akhil-manoj/drdo/build/pysdf" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/akhil-manoj/drdo/install" --install-scripts="/home/akhil-manoj/drdo/install/bin"
