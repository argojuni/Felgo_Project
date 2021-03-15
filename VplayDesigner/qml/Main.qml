import Felgo 3.0
import QtQuick 2.0

App {

    Navigation {
        id: navigation

        NavigationItem {
            id: navigationItem
            title: "Tab 1"
            icon: IconType.home
            NavigationStack {
                id: navigationStack

                Page {
                    id: page
                    backgroundColor: '#ccffcc'

                    title: "Halaman Pertama"
                AppImage {
                    id: appImage

                    height: 200
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    source: "../assets/felgo-logo.png"
                    fillMode: Image.PreserveAspectFit
                }
                }
            }
        }

       NavigationItem {
           id: navigationItem1
           title: "Tab 2"
           icon: IconType.circle
           NavigationStack {
               SecondPage {
                   id: secondPage
               }

           }
       }
   }
}
