# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelloCli < Formula
  desc ""
  homepage ""
  version "1.0.10-SNAPSHOT-f0ef5bb"

  on_macos do
    url "https://gitlab.com/study1/hello-cli/-/releases/v1.0.10/downloads/hello-cli_Darwin_x86_64.tar.gz"
    sha256 "3c1854de37ad9e1b3426e42849001b00de9e40d9cf8b2427d62a12497be3f126"

    def install
      bin.install "hello-cli"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the HelloCli
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://gitlab.com/study1/hello-cli/-/releases/v1.0.10/downloads/hello-cli_Linux_x86_64.tar.gz"
        sha256 "5a5f3716a7576a819be10519ba6b792286e71c76e962aa5236a518f53d295ed0"

        def install
          bin.install "hello-cli"
        end
      end
    end
  end
end
