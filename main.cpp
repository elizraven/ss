#include <QApplication>
#include <QMainWindow>
#include <QQuickWidget>
#include <QMdiArea>
#include <QLCDNumber>
#include <QMenuBar>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    QMainWindow mainWindow;

    QMdiArea *centralWidget = new QMdiArea;



    QQuickWidget *quickWidget = new QQuickWidget;
    quickWidget->setMinimumSize(800, 800);
    quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    quickWidget->setSource(QUrl("qrc:/main.qml"));
    centralWidget->addSubWindow(quickWidget);

    mainWindow.setCentralWidget(centralWidget);

    QMenu *fileMenu = mainWindow.menuBar()->addMenu(QObject::tr("&File"));
    fileMenu->addAction(QObject::tr("E&xit"), qApp, &QCoreApplication::quit);

    mainWindow.resize(800, 800);
    mainWindow.show();

    return app.exec();
}






