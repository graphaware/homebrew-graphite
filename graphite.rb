class Graphite < Formula
  desc 'Rapid prototype of Spring Boot Neo4j apps from a graph schema'
  homepage 'http://graphaware.com'
  url "https://www.dropbox.com/s/15dv9ln06ihlkpe/graphite.tgz?dl=1"
  version '0.4'

  depends_on :java => "1.8"

  def install
    bin.install bin/graphite
  end

end