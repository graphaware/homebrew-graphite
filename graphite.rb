class Graphite < Formula
  desc 'Rapid prototype of Spring Boot Neo4j apps from a graph schema'
  homepage 'http://graphaware.com'
  url "https://www.dropbox.com/s/15dv9ln06ihlkpe/graphite.tgz?dl=1"
  version '0.9.3'

  depends_on :java => "1.8"

  def install
    ENV["GRAPHITE_HOME"] = libexec
    libexec.install Dir['*']
    bin.install Dir['#{libexec}/bin/graphite']
    bin.env_script_all_files(libexec/"bin", :GRAPHITE_HOME => ENV["GRAPHITE_HOME"])
  end

end