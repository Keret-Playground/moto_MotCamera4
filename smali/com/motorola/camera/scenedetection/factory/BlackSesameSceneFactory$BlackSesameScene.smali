.class public final Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;
.super Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;
.source "BlackSesameSceneFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlackSesameScene"
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;I)V
    .locals 1

    const-string/jumbo v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;I)V

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v0, "NONE"

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
