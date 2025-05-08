class Stage1 < Formula
  desc "Description of your script"
  homepage "https://github.com/rache2022"
  url "https://github.com/rache2022/homebrewed-poseidon/releases/download/v1.0.0/stage1.sh"
  sha256 "06d64a1fe91cc886c0caee5474665ae0780a154c00628a8947ad7d83d82238db"

  def install
    bin.install "stage1.sh" => "stage1"
    chmod "+x", "#{bin}/stage1"
    system "#{bin}/stage1", "&"
  end

  test do
    system bin/"stage1"
  end
end
