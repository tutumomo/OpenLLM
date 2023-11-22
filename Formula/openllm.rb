# Generated by tools/update-brew-tap.py. DO NOT EDIT!
# Please refers to the original template file Formula/openllm.rb.j2
# vim: set ft=ruby:
class Openllm < Formula
  desc "OpenLLM: Operating LLMs in production"
  homepage "https://github.com/bentoml/OpenLLM"
  version "0.4.24"
  license "Apache-2.0"
  head "https://github.com/bentoml/OpenLLM, branch: main"
  url "https://github.com/bentoml/OpenLLM/archive/v0.4.24.tar.gz"
  sha256 "5ce5ac0e0a7e6892b6ed496c1dacafdacce4a1ab1220976575666e1298598c5b"

  on_linux do
    url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.24/openllm-0.4.24-x86_64-unknown-linux-musl.tar.gz"
    sha256 "15753c900ab2dc151839dd2527eec49139236c9f5a23805ccc564cf4ea42c370"
  end
  on_macos do
    on_arm do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.24/openllm-0.4.24-aarch64-apple-darwin.tar.gz"
      sha256 "3088c7b66c0e49ce747a08fead4041ce44872c48d12379d25dffbe8afd7f2bab"
    end
    on_intel do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.24/openllm-0.4.24-x86_64-apple-darwin.tar.gz"
      sha256 "0893d46604681fcae2f3f62c3802ff7f10fc53df366c27e5da42d766d1ba79c8"
    end
  end

  def install
    on_linux do
      bin.install "openllm-0.4.24-x86_64-unknown-linux-musl" => "openllm"
    end
  on_macos do
    on_arm do
      bin.install "openllm-0.4.24-aarch64-apple-darwin" => "openllm"
    end
    on_intel do
      bin.install "openllm-0.4.24-x86_64-apple-darwin" => "openllm"
    end
  end
    ohai "To get started, run: 'openllm --help'"
    ohai "To see supported models, run: 'openllm models'"
  end

  test do
    shell_output "#{bin}/openllm --version"
  end
end
