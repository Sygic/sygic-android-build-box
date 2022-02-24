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
docker build --cache-from ${IMAGE} -t sygic-android-build-box:snapshot .
```

## Run image

### Set environments
```sh
PROJECT_DIR=/path/to/project            # working directory with project sources
GRADLE_CACHE=$HOME/.dockercache/gradle  # directory for gradle cache
mkdir -p $GRADLE_CACHE
```

### Run interactive mode
```sh
docker run --rm \
    -v "$PROJECT_DIR":/project \
    -v "$GRADLE_CACHE":"/home/builder/.gradle" \
    -it sygic-android-build-box:snapshot \
    bash
```

### Run docker build
```sh
docker run --rm \
    -v "$PROJECT_DIR":/project \
    -v "$GRADLE_CACHE":"/home/builder/.gradle" \
    sygic-android-build-box:snapshot \
    bash -c "cd /project && ./gradlew build"
```
