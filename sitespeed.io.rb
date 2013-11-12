require 'formula'

class SitespeedIo < Formula
  depends_on 'phantomjs'
  homepage 'http://www.sitespeed.io'
  url 'https://github.com/sitespeedio/sitespeed.io/releases/download/v2.2/sitespeed.io-2.2.tar.gz'
  sha1 '465b2248d25e1a844a566e2dc93bca57c1dbcb91'

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
