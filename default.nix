{
  buildGoModule,
  lib,
  pkg-config,
  glib,
  gobject-introspection,
  gtk4,
  gtk4-layer-shell,
  gdk-pixbuf,
  graphene,
  cairo,
  pango,
}:
buildGoModule {
  pname = "walker";
  version = lib.fileContents ./version.txt;

  src = ./.;
  vendorHash = "sha256-KvFv3NMYYjPu4PjadWGW44yCSwqElUUTjkEZkUlEFag=";

  nativeBuildInputs = [pkg-config];
  buildInputs = [
    glib
    gobject-introspection
    gtk4
    gtk4-layer-shell
    gdk-pixbuf
    graphene
    cairo
    pango
  ];

  meta = with lib; {
    description = "Wayland-native application runner";
    homepage = "https://github.com/abenz1267/walker";
    license = licenses.mit;
    maintainers = with maintainers; [diniamo];
    platforms = platforms.linux;
    mainProgram = "walker";
  };
}
