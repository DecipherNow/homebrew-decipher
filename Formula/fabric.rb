class Fabric < Formula
  desc "Command-line utilities for Grey Matter Fabric"
  homepage "https://github.com/deciphernow/gm-fabric-go.git"

  url "https://github.com/DecipherNow/gm-fabric-go/archive/v0.1.5.tar.gz"
  sha256 "96b3df4f311cc2c634c1005e2563aa78156f5421406350f0727707be0c31b331"

  head "https://github.com/deciphernow/gm-fabric-go.git"

  depends_on "dep" => :build
  depends_on "go" => [:build, :recommended]
  depends_on "protobuf" => :recommended

  def install
    contents = Dir["{*,.git,.gitignore}"]
    gopath = buildpath/"gopath"
    (gopath/"src/github.com/deciphernow/gm-fabric-go").install contents

    ENV["GOPATH"] = gopath

    cd gopath/"src/github.com/deciphernow/gm-fabric-go/cmd/fabric" do
      hash = build.head? ? `git rev-parse --verify --short HEAD` : 'release'
      system "dep", "ensure", "-v"
      system "go", "build", "-o", "fabric", "-ldflags", "-X github.com/deciphernow/gm-fabric-go/version.gitHash=#{hash}"
      bin.install "fabric"
    end
  end

  test do
    system "fabric", "--version"
  end
end
