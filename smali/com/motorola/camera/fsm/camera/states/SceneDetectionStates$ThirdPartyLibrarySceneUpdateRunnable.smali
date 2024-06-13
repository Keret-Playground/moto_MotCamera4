.class public final Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ThirdPartyLibrarySceneUpdateRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SceneDetectionStates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThirdPartyLibrarySceneUpdateRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 1
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v1, v0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.ThirdPartyLibraryScene"

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;

    invoke-virtual {v0}, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->clear()V

    .line 3
    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v1, v0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;

    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;

    .line 5
    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v2, v1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    sput-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 6
    sput-object v3, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->apply()V

    .line 8
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$ThirdPartyLibrarySceneUpdateRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
