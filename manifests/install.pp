class ubuntu_ffmpeg::install {
  include apt

  apt::ppa { $ubuntu_ffmpeg::ppa: }

  package { 'ffmpeg':
    ensure  => present,
    require => Class['apt::update']
  }
}
