require 'formula'

class SitespeedIo < Formula
  depends_on 'phantomjs'
  homepage 'http://www.sitespeed.io'
  version '2.2-beta-1'  
  url 'https://github.com/sitespeedio/sitespeed.io/releases/download/v2.1.2/sitespeed.io-2.2.tar.gz'
  sha1 '476a37544243622e484c800c7cc5cf74212aaea0'
  
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
