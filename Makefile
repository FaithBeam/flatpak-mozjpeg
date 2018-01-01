all:
	true
pre-build:
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install flathub org.freedesktop.Platform//1.6 org.freedesktop.Sdk//1.6
build:
	flatpak-builder --repo=repo mozjpeg mozjpeg.json
	flatpak build-bundle repo mozjpeg-3.2.flatpak com.github.mozjpeg
install:
	flatpak install --user --bundle mozjpeg-3.2.flatpak
uninstall:
	flatpak uninstall --user com.github.mozjpeg
clean:
	rm -rf mozjpeg/
	rm -rf repo/
	rm -rf .flatpak-builder/
	rm *.flatpak
make:
	true
