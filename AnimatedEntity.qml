import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0
import QtQuick 2.1
import QtQuick 2.0 as QQ2


Entity {
    id: sceneRoot

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        nearPlane : 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 0.0, 0.0, 40.0 )
        upVector: Qt.vector3d( 0.0, 10.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    FirstPersonCameraController { camera: camera }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer {
                camera: camera
                clearColor: "transparent"
            }
        },
        InputSettings { }
    ]

PhongMaterial {
    id:material

}

    SphereMesh {
        id: sun
        radius: 10

    }

    PhongMaterial {
        id:sunmaterial
        diffuse:"palegoldenrod"
        ambient : "khaki"
        shininess : 500
        specular :"khaki"
    }
    Transform {
        id: sunTransform
        property real userAngle: 0.0
        matrix: {
            var n = Qt.matrix4x4();
            n.rotate(userAngle, Qt.vector3d(0, 0, 0))
            n.translate(Qt.vector3d(10, 0, 0));
            return n;
        }
    }


    Entity {
        id: sunEntity
        components: [ sun, sunmaterial, sunTransform ]
    }

    SphereMesh {
        id: mer
        radius: 3
    }



    Transform {
        id: merTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 1, 0))
            m.translate(Qt.vector3d(20, 0, 20));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: merTransform
        property: "userAngle"
        duration: 10000
        from: 0
        to: 720

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: merEntity
        components: [ mer, material, merTransform ]
    }
    SphereMesh {
        id: ven
        radius: 4
    }


    Transform {
        id: venTransform
        property real userAngle: 0.0
        matrix: {
            var k = Qt.matrix4x4();
            k.rotate(userAngle, Qt.vector3d(0, 15, 0))
            k.translate(Qt.vector3d(30, 0, 30));
            return k;
        }
    }


    QQ2.NumberAnimation {
        target: venTransform
        property: "userAngle"
        duration: 10000
        from: 10
        to: 370

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: venEntity
        components: [ ven, material, venTransform ]
    }
    SphereMesh {
        id: eart
        radius: 4
    }

    Transform {
        id: eartTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 30, 0))
            m.translate(Qt.vector3d(45, 0, 45));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: eartTransform
        property: "userAngle"
        duration: 10000
        from: 200
        to: 920

        loops: QQ2.Animation.Infinite
        running: true
    }
    Material {
            id: materialEarth
            property string im
            im: "/images/solarsystemscope/earthmap2k.jpg"
    }
    Entity {
        id: eartEntity
        components: [ eart, materialEarth, eartTransform ]
    }


    SphereMesh {
        id: mars
        radius: 4
    }

    Transform {
        id: marsTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 45, 0))
            m.translate(Qt.vector3d(60, 0, 60));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: marsTransform
        property: "userAngle"
        duration: 10000
        from: 178
        to: 538

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: marsEntity
        components: [ mars, material, marsTransform ]
    }


    SphereMesh {
        id: ju
        radius: 9
    }

    Transform {
        id: juTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 70, 0))
            m.translate(Qt.vector3d(85, 0, 85));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: juTransform
        property: "userAngle"
        duration: 10000
        from: 300
        to: 660

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: juEntity
        components: [ ju, material, juTransform ]
    }

    SphereMesh {
        id: sat
        radius: 8
    }

    Transform {
        id: satTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 115, 0))
            m.translate(Qt.vector3d(115, 0, 115));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: satTransform
        property: "userAngle"
        duration: 10000
        from: 20
        to: 380

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: satEntity
        components: [ sat, material, satTransform ]
    }
    SphereMesh {
        id: uran
        radius: 6
    }

    Transform {
        id: uranTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 150, 0))
            m.translate(Qt.vector3d(150, 0, 150));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: uranTransform
        property: "userAngle"
        duration: 10000
        from: 100
        to: 820

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: uranEntity
        components: [ uran, material, uranTransform ]
    }
    SphereMesh {
        id: nept
        radius: 7
    }

    Transform {
        id: neptTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 185, 0))
            m.translate(Qt.vector3d(190, 0, 190));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: neptTransform
        property: "userAngle"
        duration: 10000
        from: 340
        to: 700

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: neptEntity
        components: [ nept, material, neptTransform ]
    }
    SphereMesh {
        id: pl
        radius: 1
    }

    Transform {
        id: plTransform
        property real userAngle: 0.0
        matrix: {
            var m = Qt.matrix4x4();
            m.rotate(userAngle, Qt.vector3d(0, 210, 0))
            m.translate(Qt.vector3d(220, 0, 220));
            return m;
        }
    }


    QQ2.NumberAnimation {
        target: plTransform
        property: "userAngle"
        duration: 10000
        from: 70
        to: 430

        loops: QQ2.Animation.Infinite
        running: true
    }

    Entity {
        id: plEntity
        components: [ pl, material, plTransform ]
    }
}
