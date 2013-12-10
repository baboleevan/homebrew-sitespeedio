require 'formula'

class SitespeedIo < Formula
  depends_on 'phantomjs'
  homepage 'http://www.sitespeed.io'
  url 'https://github.com/sitespeedio/sitespeed.io/releases/download/v2.3/sitespeed.io-2.3.tar.gz'
  sha1 '14dc5f8230eed0860f036852744f8fa38f81c3d1'

  def install
    prefix.install_metafiles
    bin.install('bin/sitespeed.io')
    bin.install('bin/sitespeed.io-sites')
    bin.install('bin/sitespeed.io-junit')
    prefix.install Dir['report']
    prefix.install Dir['dependencies']
  end

  test do
    system "sitespeed.io", "-V"
  end
end
