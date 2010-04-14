TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .
QT += network \
    xml \
    sql
//win32:LIBS += libeay32.lib
//unix:LIBS += -lcrypto
HEADERS += twitstatusedit.h \
    shortenedurl.h \
    mainwindow.h \
    langchangedialog.h \
    qtwitview.h \
    groupdialog.h \
    sceneitems/pixmapbuttonitem.h \
    sceneitems/gradientrectitem.h \
    sceneitems/netpixmapitem.h \
    sceneitems/statustextitem.h \
    qtwit/qtwitupdate.h \
    qtwit/qtwitstatusdata.h \
    qtwit/qtwitstatus.h \
    qtwit/qtwitrtstatus.h \
    qtwit/qtwitrtstatusdata.h \
    qtwit/qtwitverifycredentials.h \
    qtwit/qtwitfriends.h \
    qtwit/qtwitextuserinfodata.h \
    qtwit/qtwitextuserinfo.h \
    qtwit/qtwitbase.h \
    qtwit/qtwitdestroy.h \
    qtwit/qtwitfavorites.h \
    qtwit/qtwithometimeline.h \
    qtwit/qtwitmentions.h \
    qtwit/hometimeline.h \
    qtwit/mentions.h \
    qtwit/qtwitretweet.h \
    xml/xmlreaderextuserinfo.h \
    xml/xmlreaderstatus.h \
    xml/xmlreaderextusers.h \
    oauth/oauth.h \
    oauth/oauthtwitter.h \
    oauth/pindialog.h \
    signalwaiter.h \
    tweetlistmodel.h \
    tweetviewitem.h \
    tweetlistview.h \
    tweetlistmodelunread.h \
    qtwit/qtwituserdata.h \
    qtwit/qtwituser.h \
    xml/xmlreaduser.h \
    xml/xmlreaduserlist.h \
    qtwit/qtwitdmstatusdata.h \
    qtwit/qtwitdmstatus.h \
    xml/xmlreaddirectmessages.h \
    qtwit/qtwitdirectmessages.h
SOURCES += main.cpp \
    twitstatusedit.cpp \
    shortenedurl.cpp \
    mainwindow.cpp \
    langchangedialog.cpp \
    qtwitview.cpp \
    groupdialog.cpp \
    sceneitems/pixmapbuttonitem.cpp \
    sceneitems/gradientrectitem.cpp \
    sceneitems/netpixmapitem.cpp \
    sceneitems/statustextitem.cpp \
    qtwit/qtwitbase.cpp \
    qtwit/qtwitupdate.cpp \
    qtwit/qtwitstatus.cpp \
    qtwit/qtwitverifycredentials.cpp \
    qtwit/qtwitfriends.cpp \
    qtwit/qtwitdestroy.cpp \
    qtwit/qtwitfavorites.cpp \
    qtwit/qtwithometimeline.cpp \
    qtwit/qtwitmentions.cpp \
    qtwit/hometimeline.cpp \
    qtwit/mentions.cpp \
    qtwit/qtwitretweet.cpp \
    xml/xmlreaderstatus.cpp \
    xml/xmlreaderextuserinfo.cpp \
    xml/xmlreaderextusers.cpp \
    oauth/oauth.cpp \
    oauth/oauthtwitter.cpp \
    oauth/pindialog.cpp \
    signalwaiter.cpp \
    tweetlistmodel.cpp \
    tweetviewitem.cpp \
    tweetlistview.cpp \
    tweetlistmodelunread.cpp \
    xml/xmlreaduser.cpp \
    xml/xmlreaduserlist.cpp \
    xml/xmlreaddirectmessages.cpp \
    qtwit/qtwitdirectmessages.cpp
FORMS += forms/mainwindowform.ui \
    forms/langchangedialogform.ui \
    forms/groupdialogform.ui \
    forms/pindialogform.ui
TRANSLATIONS += translations/qtwitdget_en.ts \
    translations/qtwitdget_mk.ts
RESOURCES = qtwitdget.qrc
win32:RC_FILE = qtwitdget.rc
