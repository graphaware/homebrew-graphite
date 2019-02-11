class Graphite < Formula
  desc 'Rapid prototype of Spring Boot Neo4j apps from a graph schema'
  homepage 'http://graphaware.com'
  url "https://www.dropbox.com/s/15dv9ln06ihlkpe/graphite.tgz?dl=1"
  version '0.9.5'

  depends_on :java => "1.8"

  def install
    chmod 0755, "bin/graphite"

    inreplace ["bin/graphite"] do |s|
      s.gsub! /^GRAPHITE_HOME=.*$/, "GRAPHITE_HOME=#{libexec}"
    end

    bin.install "bin/graphite"
    libexec.install Dir["*"]
    # Add symlinks for the Language Server
    prefix.install_symlink libexec/"lib"
    bin.env_script_all_files(libexec/"bin", Language::Java.java_home_env("1.8"))
  end

end