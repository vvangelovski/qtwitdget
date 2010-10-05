TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .\
    ./qtweetlib

QT += network \
    sql \
    declarative

HEADERS += \
    shortenedurl.h \
    mainwindow.h \
    langchangedialog.h \
    tweetqmllistmodel.h \
    mentionsqmllistmodel.h \
    directmessagesqmllistmodel.h

# QJSON
HEADERS += \
    qjson/stack.hh \
    qjson/serializerrunnable.h \
    qjson/serializer.h \
    qjson/qobjecthelper.h \
    qjson/qjson_export.h \
    qjson/qjson_debug.h \
    qjson/position.hh \
    qjson/parserrunnable.h \
    qjson/parser_p.h \
    qjson/parser.h \
    qjson/location.hh \
    qjson/json_scanner.h \
    qjson/json_parser.hh

# QTweetLib
HEADERS += \
    qtweetlib/oauth.h \
    qtweetlib/oauthtwitter.h \
    qtweetlib/qtweetlib_global.h \
    qtweetlib/qtweetnetbase.h \
    qtweetlib/qtweetstatus.h \
    qtweetlib/qtweetuser.h \
    qtweetlib/qtweetdmstatus.h \
    qtweetlib/qtweetlist.h \
    qtweetlib/qtweethometimeline.h \
    qtweetlib/qtweetstatusdestroy.h \
    qtweetlib/qtweetmentions.h \
    qtweetlib/qtweetdirectmessages.h \
    qtweetlib/qtweetstatusupdate.h \
    qtweetlib/qtweetaccountverifycredentials.h \
    qtweetlib/qtweetdirectmessagenew.h

SOURCES += main.cpp \
    shortenedurl.cpp \
    mainwindow.cpp \
    langchangedialog.cpp \
    tweetqmllistmodel.cpp \
    mentionsqmllistmodel.cpp \
    directmessagesqmllistmodel.cpp

# QJSON
SOURCES += \
    qjson/serializerrunnable.cpp \
    qjson/serializer.cpp \
    qjson/qobjecthelper.cpp \
    qjson/parserrunnable.cpp \
    qjson/parser.cpp \
    qjson/json_scanner.cpp \
    qjson/json_parser.cc

# QTweetLib
SOURCES += \
    qtweetlib/oauth.cpp \
    qtweetlib/oauthtwitter.cpp \
    qtweetlib/qtweetnetbase.cpp \
    qtweetlib/qtweetstatus.cpp \
    qtweetlib/qtweetuser.cpp \
    qtweetlib/qtweetdmstatus.cpp \
    qtweetlib/qtweetlist.cpp \
    qtweetlib/qtweethometimeline.cpp \
    qtweetlib/qtweetstatusdestroy.cpp \
    qtweetlib/qtweetmentions.cpp \
    qtweetlib/qtweetdirectmessages.cpp \
    qtweetlib/qtweetstatusupdate.cpp \
    qtweetlib/qtweetaccountverifycredentials.cpp \
    qtweetlib/qtweetdirectmessagenew.cpp

FORMS += forms/mainwindowform.ui \
    forms/langchangedialogform.ui
TRANSLATIONS += translations/qtwitdget_en.ts \
    translations/qtwitdget_mk.ts
RESOURCES = qtwitdget.qrc
win32:RC_FILE = qtwitdget.rc

OTHER_FILES += \
    qml/Button.qml \
    qml/Tweet.qml \
    qml/TweetList.qml \
    qml/TestButton.qml \
    qml/AuthPage.qml \
    qml/MainScreen.qml \
    qml/TweetUpdate.qml \
    qml/DirectMessageTweet.qml \
    qml/DirectMessageList.qml
