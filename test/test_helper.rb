require 'test/unit'
require 'pathname'
require 'rubygems'

require 'shoulda'
require 'matchy'
require 'fakeweb'

begin require 'redgreen'; rescue LoadError; end

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'ilinkmaker'

class Test::Unit::TestCase
end

def fixture_file(filename)
  return '' if filename == ''
  file_path = File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
  File.read(file_path)
end

def ilinkmaker_url(url, options={})
  url =~ /^http/ ? url : "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsSearch#{url}"
end

def stub_get(url, filename, options={})
  opts = {:body => fixture_file(filename)}.merge(options)

  FakeWeb.register_uri(:get, ilinkmaker_url(url), opts)
end