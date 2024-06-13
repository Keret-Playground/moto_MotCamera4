.class public abstract Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;
.super Ljava/lang/Object;
.source "SceneImpl.kt"

# interfaces
.implements Lcom/motorola/camera/scenedetection/scene/Scene;


# instance fields
.field public final optType:I

.field public final sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public final textResource:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;I)V
    .locals 2

    const-string/jumbo v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "optType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 3
    iput v0, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->optType:I

    .line 4
    iput p2, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->textResource:I

    return-void
.end method


# virtual methods
.method public abstract apply()V
.end method

.method public abstract clear()V
.end method

.method public final getOptType$enumunboxing$()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->optType:I

    return p0
.end method

.method public final getPersistOnLensSwitch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public final getTextResource()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/ThirdPartyLibraryScene;->textResource:I

    return p0
.end method
