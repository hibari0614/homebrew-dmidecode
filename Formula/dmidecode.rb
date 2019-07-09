class Dmidecode < Formula
    desc "Dmidecode reports information about your system's hardware."
    homepage "http://www.nongnu.org/dmidecode/"
    url "http://download.savannah.gnu.org/releases/dmidecode/dmidecode-3.2.tar.xz"
    version "3.2"
    sha256 "077006fa2da0d06d6383728112f2edef9684e9c8da56752e97cd45a11f838edd"
    
    def install
        system "make"
        system "make install"
    end

    test do
        system "#{bin}/dmidecode"
    end
    
end