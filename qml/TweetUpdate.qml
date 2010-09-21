import Qt 4.7

Rectangle {
    property string tweetid
    // ### TODO rename it
    property string screenName //empty if it's update, reply, retweet, non empty if it's direct message to screenName
    property alias updateText: updateTweetInput.text
    signal updateButtonClicked

    function setReply(id, screenname) {
        tweetid = id;
        updateTweetInput.text = '@' + screenname + ' ';
        screenName = "";
    }

    function setRetweet(text, screenname) {
        updateTweetInput.text = "RT @" + screenname + ": " + text;
        screenName = "";
    }

    height: updateTweetInput.height + rowButtons.height + 5
    radius: 0
    border.width: 2
    border.color: "#000000"

    TextEdit {
        id: updateTweetInput
        width: parent.width
        height: 70
        cursorVisible: true
        font.pointSize: 10
        font.family: "Segoe UI"
        smooth: true
        selectByMouse: true
        wrapMode: TextEdit.WordWrap
        textFormat: TextEdit.PlainText
    }

    Row {
        id: rowButtons
        y: updateTweetInput.height + 5
        spacing: 5

        TestButton {
            width: 60
            height: 20
            text: "Update"
            onClicked: updateButtonClicked();
        }

        TestButton {
            width: 70
            height: 20
            text: "Short urls"
        }
    }
}
