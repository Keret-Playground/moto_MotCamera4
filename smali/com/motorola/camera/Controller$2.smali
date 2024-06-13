.class public final Lcom/motorola/camera/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Controller;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v0, :cond_5

    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    float-to-int p1, p1

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-le p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 4
    :goto_0
    iput-boolean v2, v0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x87

    if-ge p1, v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x91

    if-le p1, v0, :cond_3

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    .line 9
    :cond_3
    :goto_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 10
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/16 v2, 0xa0

    if-ge p1, v2, :cond_4

    .line 11
    iget-boolean v2, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v2, :cond_4

    .line 12
    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    .line 13
    invoke-static {p0, v3}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    goto :goto_2

    :cond_4
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_5

    .line 14
    iget-boolean p1, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz p1, :cond_5

    .line 15
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->setUnlocked(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 16
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    iget-object p1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 19
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 21
    invoke-static {p0, v3}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    :cond_5
    :goto_2
    return-void
.end method
