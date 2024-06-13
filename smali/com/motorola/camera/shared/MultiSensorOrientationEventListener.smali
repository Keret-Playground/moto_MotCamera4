.class public abstract Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;
.super Lcom/motorola/camera/shared/OrientationEventListener;
.source "MultiSensorOrientationEventListener.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/shared/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/shared/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final switchSensor(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "mSensorManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/motorola/camera/shared/Util;->getCamAlignedSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mEnabled:Z

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEventListener;->disable()V

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEventListener;->enable()V

    :cond_2
    :goto_1
    return-void
.end method
