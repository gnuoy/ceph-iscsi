#!/bin/bash

rm -rf lib/*

pip install -t lib/ git+https://github.com/juju/charm-helpers.git

git submodule init
git submodule update
(cd lib; ln -s ../mod/operator/ops;)
(cd lib; ln -s ../mod/interface-ceph-client/interface_ceph_client.py;)