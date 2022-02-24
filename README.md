# Introduction to Android Build Box for Profi Navi
It's a docker image with build tools for Android development.
Based on https://hub.docker.com/r/mingc/android-build-box

# Getting Started
see `Dockerfile` and docker documentation

# Build and Test

* follow docker rules for development

## Build environment preparing
* look for version of `mingc/android-build-box` inside `Dockerfile`

```sh
#set variable
IMAGE=mingc/android-build-box:X.Y.Z
# download image
docker pull ${IMAGE}
```

## Build image

```sh
docker build --cache-from ${IMAGE} -t sygic-android-build-box:latest .
```

## Run image
```


```
