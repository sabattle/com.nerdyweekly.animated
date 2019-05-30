import QtQuick 2.5
import org.kde.plasma.core 2.0 as PlasmaCore
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    width: 2560; height: 1440
    color: "#00050a"

    AnimatedImage {
        id: animation
        source: "animation.gif"
        height: 1440; width: 2560
        fillMode: Image.Stretch
        smooth: false
        cache: true
    }

    FastBlur {
        id: blur
        visible: wallpaper.configuration.Blur
        anchors.fill: animation

        source: animation
        radius: 50
    }
}
