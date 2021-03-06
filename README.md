# flatpak-mozjpeg
Mozilla's mozjpeg in a flatpak. Currently only useful for compressing images.

### Dependencies
~~~~
flatpak
flatpak-builder (When building yourself)
~~~~

### Building & installing it yourself
~~~~
git clone https://github.com/FaithBeam/flatpak-mozjpeg.git
cd flatpak-mozjpeg/
make pre-build
make build
make install
~~~~

### Installing pre-built .flatpak
Download your preferred version on the releases page
~~~~
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform//20.08
flatpak install --user --bundle the-file-you-just-downloaded.flatpak
~~~~

### Usage
~~~~
flatpak run com.github.mozjpeg [options] input-image.jpg > output-image.jpg
OR
com.github.mozjpeg [options] input-image.jpg > output-image.jpg
~~~~

### Uninstalling
~~~~
make uninstall
OR
flatpak uninstall --user com.github.mozjpeg
~~~~
