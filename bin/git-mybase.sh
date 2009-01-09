#!/bin/bash
# A pretty looking git-svn-rebase that is way better than the default
SVN_REF=`git config svn-remote.svn.fetch | sed s/.*://`
OLD_SVN=`git rev-parse $SVN_REF`
git svn fetch > /dev/null
git rebase git-svn > /dev/null
git log $OLD_SVN..$SVN_REF --stat=80,120 --pretty=format:'%Cred%an%Creset %Cgreen%H%Creset %s'
