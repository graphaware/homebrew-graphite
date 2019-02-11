class Graphite < Formula
  desc 'Rapid prototype of Spring Boot Neo4j apps from a graph schema'
  homepage 'http://graphaware.com'
  url "https://www.dropbox.com/s/15dv9ln06ihlkpe/graphite.tgz?dl=1"
  version '0.9.2'

  depends_on :java => "1.8"

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/graphite" => "graphite"
  end

end