# 목적

1. pcm 장치로부터 사운드를 입력받아서, 파일로 저장하기
2. 저장된 파일을 읽어서 사운드를 변조하고, 별도의 파일로 저장하기

# requirements
```bash
$ sudo apt-get install freeglut3-dev
$ sudo apt-get install libglfw3 libglfw3-dev
$ sudo apt-get install sox libcurl4-openssl-dev clang libopencv-dev libsox-dev
```

# Build

```bash
$ ./build.sh
```

# Run

```bash
$ cd launcherModule/build
$ ./launcherModule
```