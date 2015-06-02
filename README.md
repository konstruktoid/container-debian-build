## Debian base image generator
Run `sudo bash buildeb.sh` to generate a Debian base image.
It will use `debootstrap`, create a tar-file, generate the `Dockerfile`
and write the SHA256 checksum of the created tar-file to `build.checksums`.
`buildeb.sh` will also add `.git` and previously generated tar-files
to `.dockerignore`.
  
The generated image will weigh in around 46M compared to the Docker hub version
which is around 85M.
  
### Recommended reading  
[Before you initiate a “docker pull”](https://securityblog.redhat.com/2014/12/18/before-you-initiate-a-docker-pull/)  
[Docker Security Cheat Sheet](https://github.com/konstruktoid/Docker/blob/master/Security/CheatSheet.md)  
[what does docker.io run -it debian sh run?](https://joeyh.name/blog/entry/docker_run_debian/)  
