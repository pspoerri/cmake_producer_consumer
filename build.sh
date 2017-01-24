#!/usr/bin/env bash

pushd producer &>/dev/null
	rm -rf build
	mkdir -p build
	pushd build &>/dev/null
		cmake .. -DCMAKE_INSTALL_PREFIX=../install
		make install
	popd &>/dev/null
popd &>/dev/null

pushd consumer &>/dev/null
	rm -rf build
	mkdir -p build
	pushd build &>/dev/null
		cmake .. -DCMAKE_INSTALL_PREFIX=../install
		make install
	popd &>/dev/null
popd &>/dev/null

echo "Running the producer application"
echo "--------------------------------"
echo
producer/install/bin/producer
echo 
echo "Running the consumer application"
echo "--------------------------------"
echo
consumer/install/bin/consumer