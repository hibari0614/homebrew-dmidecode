class Dmidecode < Formula
    desc "Dmidecode reports information about your system's hardware."
    homepage "http://www.nongnu.org/dmidecode/"
    url "http://download.savannah.gnu.org/releases/dmidecode/dmidecode-3.2.tar.xz"
    version "3.2"
    sha256 "077006fa2da0d06d6383728112f2edef9684e9c8da56752e97cd45a11f838edd"
    
    def install
        system "make"

        # Install dmidecode
        bin.install "dmidecode"
        man8.install "man/dmidecode.8"

        # Install biosdecode
        bin.install "biosdecode"
        man8.install "man/biosdecode.8"

        # Install ownership
        bin.install "ownership"
        man8.install "man/ownership.8"

        # Install vpddecode
        bin.install "vpddecode"
        man8.install "man/vpddecode.8"
    end

    test do
        system "#{bin}/dmidecode"
    end
    
end