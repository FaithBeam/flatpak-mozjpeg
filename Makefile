all:
	true
pre-build:
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install flathub org.freedesktop.Platform//20.08 org.freedesktop.Sdk//20.08
build:
	flatpak-builder --repo=repo build mozjpeg.yaml
	flatpak build-bundle repo mozjpeg.flatpak com.github.mozjpeg
install:
	flatpak install --user --bundle mozjpeg.flatpak
uninstall:
	flatpak uninstall --user com.github.mozjpeg
clean:
	rm -rf mozjpeg/
	rm -rf build/
	rm -rf .flatpak-builder/
	rm *.flatpak
make:
	true
