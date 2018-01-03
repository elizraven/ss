TEMPLATE = app

QT += 3dextras

target.path = $$[QT_INSTALL_EXAMPLES]/qt3d/$$TARGET
INSTALLS += target

QT += widgets qml quick quickwidgets
QT += core gui 3dcore 3drender 3dinput 3dextras

SOURCES += \
    main.cpp

OTHER_FILES += \
    AnimatedEntity.qml \
    main.qml

RESOURCES += \
    ss.qrc \



