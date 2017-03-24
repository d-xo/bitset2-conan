from conans import ConanFile, CMake, tools
import os


class Bitset2Conan(ConanFile):
    name = "bitset2"
    version = "2016-12-18"
    license = "MIT"
    url = "https://github.com/xwvvvvwx/bitset2-conan.git"
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False]}
    default_options = "shared=False"
    generators = "cmake"

    def source(self):
        self.run("git clone https://github.com/ClaasBontus/bitset2.git")
        self.run("cd bitset2 && git checkout 74db07747c39ce2cb44ebac2d077b7bf761871e0")

    def build(self):
        pass

    def package(self):
        self.copy("*.hpp", dst="include", src="bitset2")

    def package_info(self):
        pass
