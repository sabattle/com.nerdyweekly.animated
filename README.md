# Animated GIF wallpaper for KDE Plasma 5

[Demo Video](https://youtu.be/OVNZOYLKcRs)

- Fork of nhanb's version of Animated GIF Wallpaper, modified to be locked to 2k. Looking to make it more
configurable in the future.  
- Put this in `~/.local/share/plasma/wallpapers/com.nerdyweekly.animated`.
- Go to **Desktop Settings**, choose **Wallpaper Type: Animated GIF**, apply, profit.
- Optional: Go to **Screen Locking** and choose the same wallpaper type. Enable blur if you prefer
  that (I do).
- Optional: replace `contents/ui/animation.gif` with your animated gif of choice. You may need to
  tweak the image dimensions a bit in `contents/ui/main.qml`.

![Plasma Desktop Settings](settings.png)

A bird's eye view:

- **metadata.desktop**: self-explanatory
- **contents/ui/main.qml**: how to render the wallpaper
- **contents/ui/config.qml**: how to render the wallpaper config window
- You can preview your QML files quickly with `qmlscene <file>.qml`. Probably comes with QtCreator.
  **Note**: my **config.qml** uses `formAlignment`, which is available in the context that it's
  used in but will make `qmlscene` complain. That's normal.
- May need to logout then login again for the updated `main.qml` to take effect. Or try removing
  all `*.qmlc` files.
