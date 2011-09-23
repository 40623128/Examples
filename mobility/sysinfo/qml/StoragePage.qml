import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: storageTab
    orientationLock: PageOrientation.LockLandscape
    anchors.margins: UiConstants.DefaultMargin

    Flickable {
        anchors.fill: parent
        flickableDirection: Flickable.VerticalFlick
        contentHeight: columnStorage.height + toolBarLayout.height
        contentWidth: width
        Column {
            id: columnStorage
            anchors.top: parent.top
            width: parent.width

            spacing: 25

            Repeater {

                model: dataModel.volumeNames

                Column {

                    width: parent.width

                    Label {
                        width: parent.width
                        text: "Volume: " + modelData
                        platformStyle: LabelStyle {
                            fontPixelSize: 32
                        }
                    }

                    Row {
                        spacing: 30
                        Label {
                            text: "Type: " + dataModel.storageType(modelData)
                        }

                        Label {
                            text: "Total size: " + dataModel.totalStorageSize(modelData)
                        }

                        Label {
                            text: "Available: " + dataModel.availableStorageSize(modelData)
                        }
                    }
                }
            }
        }
    }
}
