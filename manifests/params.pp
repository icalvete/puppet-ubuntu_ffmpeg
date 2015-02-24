class ubuntu_ffmpeg::params {

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {
    }
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
