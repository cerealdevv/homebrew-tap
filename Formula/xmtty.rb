class XmttyGit < Formula
  desc "the christmas countdown (git version)"
  homepage "https://codeberg.org/cerealdevv/xmtty"
  license "GPL-3.0-only"
  head "https://codeberg.org/cerealdevv/xmtty.git", branch: "main"
  depends_on "rust" => :build
  conflicts_with "xmtty", because: "identical binary name"
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_path_exists bin/"xmtty"
  end
end
