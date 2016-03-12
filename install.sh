#!/bin/sh

rpm -ev --nodeps $(rpm -qa|grep dnf)
rpm -ev --nodeps $(rpm -qa|grep yum)
find . -type f -name "*.rpm" -exec rpm -iv --nosignature --nodeps {} \;
