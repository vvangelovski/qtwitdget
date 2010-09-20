import Qt 4.7

Rectangle {
    id: gradRect
    property string tweetid
    property string senderScreenName: "Screen Name"
    property string directMessageText: "Lorem ipsum dolor sit amet."
    property string avatar: "../images/default_avatar.png"

    signal replyButtonClicked

    function addTags(str) {
        return str.replace(/http:\/\/[^ \n\t]+/g, '<a href="$&">$&</a>');//surrounds http links with html link tags
    }

    function handleLink(link) {
        if (link.slice(0, 3) == 'app') {
            console.log('tag clicked');
        } else if (link.slice(0, 4) == 'http') {
            Qt.openUrlExternally(link);
        }
    }

    width: ListView.view.width;
    height: 100
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#ddf0f5"
        }
        GradientStop {
            position: 1
            color: "#e5faff"
        }
    }

    Image {
        id: avatarBox
        x: 7; y: 7
        source: "../images/avatar_box.png"

        Rectangle {
            id: whiteBorder
            x: 10; y: 10
            width: 49; height: 49
            color: "#ffffff"

            Image {
                id: avatarImage
                x: 1; y: 1
                width: 48; height: 48
                fillMode: Image.Stretch
                smooth: true
                source: tweetAvatar
            }
        }
    }

    Text {
        id: screenNameText
        x: 84; y: avatarBox.y
        width: gradRect.width - 84
        color: "#018ad9"
        text: gradRect.tweetScreenName
        smooth: true
        font.pointSize: 11
        font.family: "Segoe UI"
    }

    Text {
        id: statusText
        x: 84; y: 27
        width: gradRect.width - statusText.x
        color: "#222222"
        text: addTags(gradRect.tweetText)
        wrapMode: "WordWrap"
        smooth: true
        font.pointSize: 9
        font.family: "Segoe UI"
        onLinkActivated: gradRect.handleLink(link)
    }

    Button {
        id: replyButton
        x: 10; y: 80
        buttonImageUrl: "../images/button_reply.png"
        clickedButtonImageUrl: "../images/button_reply_click.png"

        onClicked: gradRect.replyButtonClicked()
    }

    ListView.onRemove: SequentialAnimation {
        PropertyAction { target: gradRect; property: "ListView.delayRemove"; value: true }
        NumberAnimation { target: gradRect; property: "scale"; easing.type: "InOutBack"; to: 0; duration: 500 }
        PropertyAction { target: gradRect; property: "ListView.delayRemove"; value: false }
    }

    ListView.onAdd: SequentialAnimation {
        NumberAnimation { target: gradRect; property: "scale"; easing.type: "InOutBack"; from: 0; to: 1; duration: 500 }
    }
}
