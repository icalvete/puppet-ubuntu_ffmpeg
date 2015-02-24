# puppet-ubuntu_ffmpeg
 Puppet manifest to install deprecated ffmpeg in ubuntu 14.04  (Trusty Tahr)

```bash
$ apt-get install software-properties-common
$ add-apt-repository 'deb  http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu trusty main'  && sudo add-apt-repository 'deb $ http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu saucy main'
$ apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1DB8ADC1CFCA9579
$ apt-get update
$ apt-get install ffmpeg
```
