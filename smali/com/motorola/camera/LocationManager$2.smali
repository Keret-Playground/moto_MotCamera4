.class public final Lcom/motorola/camera/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mLastLocation:Landroid/location/Location;

.field public final synthetic this$0:Lcom/motorola/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/LocationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    iget-object v1, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    const-wide/32 v6, -0x1d4c0

    cmp-long v6, v3, v6

    if-gez v6, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_8

    :cond_4
    if-eqz v6, :cond_5

    goto :goto_7

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    if-lez v4, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    if-gez v4, :cond_7

    move v6, v0

    goto :goto_4

    :cond_7
    move v6, v2

    :goto_4
    const/16 v7, 0xc8

    if-le v4, v7, :cond_8

    move v4, v0

    goto :goto_5

    :cond_8
    move v4, v2

    .line 5
    :goto_5
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_a

    if-nez v7, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v2

    goto :goto_6

    .line 7
    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_6
    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v3, :cond_c

    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    if-eqz v3, :cond_d

    if-nez v4, :cond_d

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    move v0, v2

    :goto_8
    if-eqz v0, :cond_f

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    if-nez v0, :cond_e

    .line 9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    goto :goto_9

    .line 10
    :cond_e
    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 11
    :goto_9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda3;

    .line 17
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Ljava/lang/Runnable;Z)V

    :cond_f
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-static {p1}, Lcom/motorola/camera/LocationManager;->access$100(Lcom/motorola/camera/LocationManager;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x3

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
