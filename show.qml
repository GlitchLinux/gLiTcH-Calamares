/* === Glitch Linux Calamares Slideshow ===
 *
 *   Custom slideshow showcasing Glitch Linux tools and utilities.
 *   Displayed during Calamares installation.
 *
 *   Based on Calamares slideshow framework.
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018-2019, Jonathan Carter <jcc@debian.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, or (at your option) any later version.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    property color glitchGreen: "#00E676"
    property color glitchDimGreen: "#00C853"
    property color textWhite: "#F0F0F0"
    property color textDim: "#AAAAAA"
    property color bgDark: "#1A1A1A"

    Timer {
        interval: 10000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    /* ── Slide 1: Welcome / Start Image ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 12

                Image {
                    source: "start-image.png"
                    width: 200; height: 200
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Welcome to Glitch Linux"
                    color: glitchGreen
                    font.pixelSize: 24
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Your system is being installed. Sit back and explore\nwhat Glitch Linux has to offer."
                    color: textDim
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 2: Application Menu ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Custom Application Menu"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/app-menu.png"
                    width: 420; height: 310
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "All custom Glitch utilities accessible from the app menu."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 3: gfetch System Info ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "gfetch - System Information"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/terminal-gfetch.png"
                    width: 460; height: 280
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Custom system info display with 150+ modules."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 4: Live System Builder ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Live System Builder"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/iso-builder.png"
                    width: 460; height: 300
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Build a bootable live ISO directly from your running system."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 5: Squashfs Tool ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Glitch Linux Squasher"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/squashfs-tool.png"
                    width: 440; height: 300
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Convert your running system into a live-bootable squashfs image."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 6: ISO Compiler ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "gLiTcH ISO Compiler"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/iso-compiler.png"
                    width: 460; height: 280
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "BIOS and EFI live ISO builder with GRUB2 and syslinux chainloading."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 7: Persistence Setup - Welcome ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Persistence Setup"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/persistence-utility.png"
                    width: 440; height: 290
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Create persistent storage on your live USB - keep your changes across reboots."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 8: Persistence Setup - LUKS Mode ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Encrypted Persistence"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/persistence-utility-2.png"
                    width: 440; height: 290
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "LUKS-encrypted or plain ext4 persistence modes for portable drives."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 9: Glitch Installer - Welcome ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Glitch Installer"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/python-gui-installer.png"
                    width: 460; height: 280
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Custom PyQt5 installer with system detection and guided setup."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 10: Glitch Installer - LUKS Encryption ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Full Disk Encryption"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/python-gui-installer-luks.png"
                    width: 440; height: 290
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Optional LUKS encryption with passphrase strength indicator."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 11: Glitch Installer - Progress ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Installation Progress"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/python-gui-installer-progress-2.png"
                    width: 460; height: 290
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Detailed real-time logging with filesystem extraction and GRUB setup."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 12: Glitch Installer - Complete ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Installation Complete"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/python-gui-installer-finished.png"
                    width: 440; height: 290
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Clean finish with install summary and reboot option."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 13: Bulk Tool - Menu ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Bulk Image and Video Tool"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/bulk-cli-tool.png"
                    width: 460; height: 280
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Batch convert, compress, and process images and video from the terminal."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 14: Bulk Tool - Running ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Bulk Processing in Action"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/bulk-job2.png"
                    width: 460; height: 290
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Lossless or maximal compression with real-time progress tracking."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 15: Tor Browser ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Tor Browser - Pre-installed"
                    color: glitchGreen
                    font.pixelSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    source: "glitch-software/tor-browser.png"
                    width: 480; height: 280
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Browse privately out of the box - Tor Browser ready to connect."
                    color: textWhite
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    /* ── Slide 16: Closing / Branding ── */
    Slide {
        Rectangle {
            anchors.fill: parent
            color: bgDark

            Column {
                anchors.centerIn: parent
                spacing: 12

                Image {
                    source: "slide1.png"
                    width: 300; height: 240
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Glitch Linux"
                    color: glitchGreen
                    font.pixelSize: 26
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Debian-based. Hand-crafted. Yours.\nglitchlinux.com"
                    color: textDim
                    font.pixelSize: 13
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    width: 500
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
