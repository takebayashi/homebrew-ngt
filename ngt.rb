class Ngt < Formula
  desc "Neighborhood Graph and Tree for Indexing High-dimensional Data"
  homepage "https://github.com/yahoojapan/NGT"
  url "https://github.com/yahoojapan/NGT/archive/v1.6.1.tar.gz"
  sha256 "83decdc7ea7a8afc3cbbd8ab4092bbb908a70793e7262e1dd0b924fa375b7f21"
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/ngt"
  end
end
