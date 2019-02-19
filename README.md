[![Build Status](https://travis-ci.org/ExpediaDotCom/aquila.svg?branch=master)](https://travis-ci.org/ExpediaDotCom/aquila)
[![License](https://img.shields.io/badge/license-Apache%20License%202.0-blue.svg)](https://github.com/ExpediaDotCom/adaptive-alerting/blob/master/LICENSE)

# Aquila

Aquila time series anomaly detector.

**NOTE:** TravisCI is currently disabled because Aquila depends on a snapshot version of AA. We'll either do a
non-snapshot AA release or else git clone AA and build that as part of the TravisCI build.

## Build JARs

```
$ mvn -e clean verify
```

## Create Docker images

```
$ make docker_build
```
