#!/usr/bin/env bash
#
# WPLib Box Provision Script
#

#
# Install the Box CLI for use inside the Guest, e.g. after `vagrant ssh`
#
git clone https://github.com/wplib/box-cli.git /vagrant/scripts/guest/cli  2>/dev/null
cd /vagrant/scripts/guest/cli
sh ./install-box-cli.sh

#
#  Disassociate the cloned Git repo and initialize a new repo.
#
box disassociate-git-repo no-errors

#
#  Check to see if WordPress is installed
#
box verify-wp-installed "complete provisioning."

#
#  Enable Object Caching
#
box enable-object-caching --force
