require 'formula'

class SitespeedIo < Formula
  depends_on 'phantomjs'
  homepage 'http://www.sitespeed.io'
  url 'https://github.com/sitespeedio/sitespeed.io/releases/download/v2.2.2/sitespeed.io-2.2.2.tar.gz'
  sha1 '0029e1d2702445580f001172e0899d2afb80afa7'

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
