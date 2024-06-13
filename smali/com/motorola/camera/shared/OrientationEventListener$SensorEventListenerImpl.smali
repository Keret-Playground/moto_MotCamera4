.class public final Lcom/motorola/camera/shared/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorEventListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/shared/OrientationEventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/OrientationEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEventListener$SensorEventListenerImpl;->this$0:Lcom/motorola/camera/shared/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    neg-float v0, v0

    const/4 v1, 0x1

    .line 3
    aget v1, p1, v1

    neg-float v1, v1

    const/4 v2, 0x2

    .line 4
    aget p1, p1, v2

    neg-float p1, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    mul-float/2addr p1, p1

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    const p1, 0x42652ee1

    neg-float v1, v1

    float-to-double v1, v1

    float-to-double v3, v0

    .line 5
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x5a

    :goto_0
    const/16 v0, 0x168

    if-lt p1, v0, :cond_0

    add-int/lit16 p1, p1, -0x168

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/shared/OrientationEventListener$SensorEventListenerImpl;->this$0:Lcom/motorola/camera/shared/OrientationEventListener;

    .line 8
    iget v0, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mOrientation:I

    if-eq p1, v0, :cond_3

    .line 9
    iput p1, p0, Lcom/motorola/camera/shared/OrientationEventListener;->mOrientation:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/shared/OrientationEventListener;->onOrientationChanged(I)V

    :cond_3
    return-void
.end method
