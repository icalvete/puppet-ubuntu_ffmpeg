class ubuntu_ffmpeg::install {

  if $ubuntu_ffmpeg::ppa {
    include apt

    apt::ppa { $ubuntu_ffmpeg::ppa: }
  }
  package { 'ffmpeg':
    ensure  => present,
    require => Class['apt::update']
  }
}
