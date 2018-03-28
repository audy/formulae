class Deskclean < Formula
  homepage 'https://github.com/audy/deskclean'
  url 'https://github.com/audy/deskclean/archive/0.1.0.tar.gz'
  sha256 'b976fab98e8e8ea96b4eda5b5eb6130511c917dd7980ee57517e70b4c73dd0b5'

  depends_on 'go' => :build

  def install
    system 'gobuild.sh'
    bin.install '.gobuild/bin/deskclean' => 'deskclean'
  end

  test do
    system '#{bin}/deskclean', '--help'
  end
end
