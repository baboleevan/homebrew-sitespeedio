require 'formula'

class SitespeedIo < Formula
  depends_on 'phantomjs'
  homepage 'http://www.sitespeed.io'
  url 'https://github.com/sitespeedio/sitespeed.io/releases/download/v2.2.1/sitespeed.io-2.2.1.tar.gz'
  sha1 '4580c337a3799a7d48aa234c32ed0060c0e745c4'

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
