require 'formula'

class SitespeedIo < Formula
  depends_on 'phantomjs'
  homepage 'http://www.sitespeed.io'
  url 'https://github.com/sitespeedio/sitespeed.io/releases/download/v2.2.3/sitespeed.io-2.2.3.tar.gz'
  sha1 'b25cdbba536331648ab6d937db259faf57ae035b'

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
