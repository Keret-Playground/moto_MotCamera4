.class public final Lcom/motorola/camera/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    }
.end annotation


# direct methods
.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 12
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 35
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 36
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 37
    iput-object p6, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 38
    iput p7, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 39
    iput p8, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 40
    iput-object p9, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 41
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 42
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 22
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 24
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 25
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 26
    iput-object p6, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 27
    iput-object p7, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 28
    iput p8, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 29
    iput p9, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 30
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 32
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 6
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 7
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 16
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 17
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 18
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 19
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 20
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 21
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 43
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 44
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 45
    iput-object p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 46
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 47
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    const p2, 0x7f11035b

    .line 48
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const/4 p2, -0x1

    .line 49
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 50
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 p2, 0x3

    .line 51
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 52
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 53
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[I[I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 54
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 55
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 56
    iput-object p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 57
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 58
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 59
    iput-object p6, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    const p2, 0x7f110385

    .line 60
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const p2, 0x7f1104c6

    .line 61
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 62
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 p2, 0x2

    .line 63
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 64
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 65
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSettingsMap()Ljava/util/Map;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v11, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    sget-object v12, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v13, "SettingsFactory"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error: JSON parsing exception "

    .line 5
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_LAST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10, v0, v7, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v7, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 13
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 15
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 16
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 18
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PANORAMA_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 21
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 22
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x0

    .line 25
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 26
    invoke-static {v10, v0, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 27
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 28
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 29
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MIRROR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 30
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 31
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v10, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 32
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v0, v1, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 33
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TIMELAPSE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 34
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 35
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MODE_DRAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_EXIT_CAMERA_AFTER_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v7, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXITED_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v7, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 38
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 39
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 40
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 41
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 42
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 43
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 44
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 46
    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 47
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 48
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 49
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 50
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 51
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 52
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 53
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 54
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 55
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v9, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 56
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 57
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_DUAL_SCREEN_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 58
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v7, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 59
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v0, v7, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 60
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_TORCH_OFF:Ljava/util/List;

    const/4 v1, 0x4

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    new-array v4, v1, [I

    fill-array-data v4, :array_1

    const v19, 0x7f110357

    const v20, 0x7f110392

    const/16 v21, 0x4

    move-object v1, v10

    move-object/from16 v22, v4

    move/from16 v4, v21

    move-object/from16 v21, v5

    move-object v5, v0

    move/from16 v23, v6

    move-object/from16 v6, v21

    move-object/from16 v24, v7

    move-object/from16 v7, v22

    move-object/from16 v25, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move/from16 v9, v20

    move-object/from16 v20, v13

    move-object v13, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 61
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_OFF:Ljava/util/List;

    const/4 v9, 0x1

    invoke-static {v13, v1, v2, v9, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 62
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v9, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 63
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    new-array v7, v0, [I

    fill-array-data v7, :array_3

    const v8, 0x7f110382

    const v21, 0x7f110392

    const/16 v22, 0x4

    move-object v1, v13

    move/from16 v4, v22

    move-object v5, v10

    move/from16 v26, v9

    move/from16 v9, v21

    move-object/from16 v27, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 64
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    const/4 v9, 0x2

    new-array v6, v9, [I

    fill-array-data v6, :array_4

    new-array v7, v9, [I

    fill-array-data v7, :array_5

    new-array v8, v9, [I

    fill-array-data v8, :array_6

    const v21, 0x7f110353

    const v28, 0x7f110353

    move-object v5, v10

    move/from16 v29, v9

    move/from16 v9, v21

    move-object/from16 v30, v10

    move/from16 v10, v28

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 65
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v8, v26

    invoke-static {v13, v1, v9, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 66
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v21, Lcom/motorola/camera/settings/SettingsManager;->HDR_VALUES:Ljava/util/List;

    new-array v6, v0, [I

    fill-array-data v6, :array_7

    new-array v7, v0, [I

    fill-array-data v7, :array_8

    new-array v5, v0, [I

    fill-array-data v5, :array_9

    const v24, 0x7f110396

    const v25, 0x7f110396

    const v26, 0x7f110396

    const v28, 0x7f110396

    move-object v1, v13

    move-object/from16 v22, v5

    move-object/from16 v5, v21

    move/from16 v31, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move/from16 v9, v26

    move-object/from16 v26, v10

    move/from16 v10, v28

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 67
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v0, [I

    fill-array-data v6, :array_a

    new-array v7, v0, [I

    fill-array-data v7, :array_b

    new-array v8, v0, [I

    fill-array-data v8, :array_c

    const/16 v28, 0x2

    const v9, 0x7f110396

    const v10, 0x7f110396

    move/from16 v4, v28

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 68
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR_BACK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v0, [I

    fill-array-data v6, :array_d

    new-array v7, v0, [I

    fill-array-data v7, :array_e

    new-array v8, v0, [I

    fill-array-data v8, :array_f

    move/from16 v9, v24

    move/from16 v10, v25

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 69
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 70
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DUAL_SCREEN_DEFAULT_PREVIEW_REVIEW_ON:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v7

    .line 71
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move/from16 v10, v29

    new-array v5, v10, [I

    fill-array-data v5, :array_10

    move-object v1, v13

    move-object/from16 v4, v26

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 72
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    xor-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v5, v10, [I

    fill-array-data v5, :array_11

    move-object v1, v13

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 73
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v7, :cond_0

    move v6, v10

    goto :goto_1

    :cond_0
    move/from16 v6, v23

    .line 74
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_VALUES:Ljava/util/List;

    new-array v5, v0, [I

    fill-array-data v5, :array_12

    move-object v1, v13

    move-object v6, v11

    .line 75
    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 76
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v0, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 77
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v0, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 78
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v10, [I

    fill-array-data v5, :array_13

    move-object v1, v13

    move-object/from16 v3, v19

    move-object/from16 v4, v26

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 79
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v10, [I

    fill-array-data v5, :array_14

    move-object/from16 v3, v22

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 80
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v10, [I

    fill-array-data v5, :array_15

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 81
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v10, [I

    fill-array-data v5, :array_16

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 82
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v10, [I

    fill-array-data v5, :array_17

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 83
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v10, [I

    fill-array-data v5, :array_18

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 84
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v6, v10, [I

    fill-array-data v6, :array_19

    new-array v7, v10, [I

    fill-array-data v7, :array_1a

    const v8, 0x7f110234

    const v9, 0x7f110234

    const/4 v4, 0x2

    move-object/from16 v5, v26

    move v0, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 85
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    fill-array-data v5, :array_1b

    move-object/from16 v4, v26

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 86
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    fill-array-data v5, :array_1c

    move-object/from16 v3, v19

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 87
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v19

    move-object/from16 v9, v26

    invoke-static {v13, v1, v10, v0, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 88
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v6, v0, [I

    fill-array-data v6, :array_1d

    new-array v7, v0, [I

    fill-array-data v7, :array_1e

    const v8, 0x7f110216

    const v19, 0x7f110216

    const/16 v21, 0x2

    move-object v1, v13

    move-object/from16 v3, v22

    move/from16 v4, v21

    move-object v5, v9

    move-object/from16 v25, v9

    move/from16 v9, v19

    move-object/from16 v32, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 89
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v6, v0, [I

    fill-array-data v6, :array_1f

    new-array v7, v0, [I

    fill-array-data v7, :array_20

    const v8, 0x7f110214

    const v9, 0x7f110214

    move-object v1, v13

    move-object/from16 v5, v25

    .line 91
    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 92
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE_PHOTO_BOOTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    .line 93
    fill-array-data v5, :array_21

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    move-object v6, v11

    .line 94
    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 95
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    fill-array-data v5, :array_22

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 96
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->STORAGE_VALUES:Ljava/util/List;

    new-array v6, v0, [I

    fill-array-data v6, :array_23

    new-array v7, v0, [I

    fill-array-data v7, :array_24

    const v8, 0x7f1103ba

    const/4 v9, -0x1

    sget-object v10, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 v4, 0x2

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 97
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v9, v22

    move-object/from16 v10, v25

    invoke-static {v13, v1, v9, v0, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 98
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    move/from16 v8, v31

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 99
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    fill-array-data v5, :array_25

    sget-object v6, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v1, v13

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 100
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 101
    iget-object v3, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    move-object/from16 v7, v32

    invoke-direct {v2, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput v0, v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 103
    iput-object v10, v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 104
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 105
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    fill-array-data v5, :array_26

    move-object v1, v13

    move-object v3, v9

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 107
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v0, [I

    fill-array-data v5, :array_27

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 108
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->TIMER_VALUES:Ljava/util/List;

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_28

    new-array v4, v1, [I

    fill-array-data v4, :array_29

    const v19, 0x7f11037e

    const v21, 0x7f1103bb

    const/16 v22, 0x4

    move-object v1, v13

    move-object/from16 v24, v4

    move/from16 v4, v22

    move-object/from16 v33, v7

    move-object/from16 v7, v24

    move/from16 v26, v8

    move/from16 v8, v19

    move-object/from16 v34, v9

    move/from16 v9, v21

    move-object/from16 v35, v10

    move-object v10, v11

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 109
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/16 v1, 0x1a

    new-array v6, v1, [I

    fill-array-data v6, :array_2a

    new-array v7, v1, [I

    fill-array-data v7, :array_2b

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x2

    move-object v1, v13

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 110
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 111
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v10, ""

    invoke-static {v13, v1, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 112
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 113
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION_VALUES:Ljava/util/List;

    new-array v5, v0, [I

    fill-array-data v5, :array_2c

    move-object v1, v13

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 114
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 115
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput v0, v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 117
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_MODE_VALUES_1:Ljava/util/List;

    .line 118
    iput-object v0, v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 119
    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 120
    iput-object v0, v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 121
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 122
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v9, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    iget-object v3, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v9, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 124
    iput v3, v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 125
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 126
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 127
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 128
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v9, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 131
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 132
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 133
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 134
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v19, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v21, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_VALUES:Ljava/util/List;

    const/16 v8, 0xe

    new-array v6, v8, [I

    fill-array-data v6, :array_2d

    new-array v7, v8, [I

    fill-array-data v7, :array_2e

    const v22, 0x7f110350

    const v24, 0x7f110350

    const/16 v25, 0x2

    move-object v1, v13

    move-object/from16 v3, v19

    move/from16 v4, v25

    move-object/from16 v5, v21

    move/from16 v8, v22

    move-object/from16 v36, v9

    move/from16 v9, v24

    move-wide/from16 v28, v14

    move-object v14, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 136
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    move/from16 v1, v23

    .line 137
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/Size;

    .line 138
    invoke-static {v15}, Landroidx/recyclerview/R$dimen;->getVideoResolutionStrings(Ljava/util/List;)[I

    move-result-object v6

    .line 139
    invoke-static {v15}, Landroidx/recyclerview/R$dimen;->getVideoResolutionIcons(Ljava/util/List;)[I

    move-result-object v7

    const v8, 0x7f110372

    const v9, 0x7f110372

    move-object v1, v13

    move-object v5, v15

    .line 140
    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 141
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v22, 0x1e

    .line 142
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->FRAME_RATE_VALUES:Ljava/util/List;

    const/4 v1, 0x7

    new-array v6, v1, [I

    fill-array-data v6, :array_2f

    new-array v7, v1, [I

    fill-array-data v7, :array_30

    const v8, 0x7f11035f

    const v9, 0x7f11035f

    const/4 v4, 0x4

    move-object v1, v13

    move-object/from16 v5, v23

    .line 143
    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 144
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v1, 0xe

    new-array v6, v1, [I

    fill-array-data v6, :array_31

    new-array v7, v1, [I

    fill-array-data v7, :array_32

    const v8, 0x7f110350

    const v9, 0x7f110350

    const/16 v24, 0x2

    move-object v1, v13

    move-object/from16 v3, v19

    move/from16 v4, v24

    move-object/from16 v5, v21

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 145
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v10, 0x0

    .line 146
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/Size;

    .line 147
    invoke-static {v15}, Landroidx/recyclerview/R$dimen;->getVideoResolutionStrings(Ljava/util/List;)[I

    move-result-object v6

    .line 148
    invoke-static {v15}, Landroidx/recyclerview/R$dimen;->getVideoResolutionIcons(Ljava/util/List;)[I

    move-result-object v7

    const v8, 0x7f110372

    const v9, 0x7f110372

    move-object v1, v13

    move-object v5, v15

    move v15, v10

    move-object v10, v12

    .line 149
    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 150
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 151
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v1, 0x7

    new-array v6, v1, [I

    fill-array-data v6, :array_33

    new-array v7, v1, [I

    fill-array-data v7, :array_34

    new-array v8, v1, [I

    fill-array-data v8, :array_35

    const v9, 0x7f11035f

    const v10, 0x7f11035f

    const/16 v19, 0x4

    move-object v1, v13

    move/from16 v4, v19

    move-object/from16 v5, v23

    .line 152
    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 153
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    const/4 v10, 0x4

    invoke-static {v13, v1, v2, v10, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 154
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_ON_OFF:Ljava/util/List;

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_36

    new-array v7, v1, [I

    fill-array-data v7, :array_37

    new-array v8, v1, [I

    fill-array-data v8, :array_38

    const v9, 0x7f11037a

    const v23, 0x7f1104b9

    move-object v1, v13

    move/from16 v10, v23

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 155
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_SUPPORT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 156
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v30

    .line 157
    invoke-virtual {v2, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 158
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 159
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 160
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 162
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 163
    invoke-static {v13, v1, v2, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 164
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v3, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    move-object/from16 v4, v36

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 165
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 166
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 167
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 168
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 169
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x2

    new-array v5, v8, [I

    fill-array-data v5, :array_39

    new-array v6, v8, [I

    fill-array-data v6, :array_3a

    new-array v7, v8, [I

    fill-array-data v7, :array_3b

    move-object v1, v13

    move-object v4, v10

    invoke-static/range {v1 .. v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[I[I[I)V

    .line 171
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL_ON_OFF:Ljava/util/List;

    const/4 v1, 0x4

    new-array v6, v1, [I

    fill-array-data v6, :array_3c

    new-array v7, v1, [I

    fill-array-data v7, :array_3d

    const v8, 0x7f11036e

    const v9, 0x7f110494

    const/4 v4, 0x2

    move-object v1, v13

    move-object v10, v11

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 172
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXTERNAL_MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 173
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL:Ljava/util/List;

    .line 174
    invoke-static {v13, v1, v2, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 175
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v4, [I

    fill-array-data v6, :array_3e

    new-array v7, v4, [I

    fill-array-data v7, :array_3f

    const v8, 0x7f11037a

    const v9, 0x7f1104b9

    move-object v1, v13

    move-object/from16 v5, v30

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 176
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DTFE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    invoke-static {v13, v1, v10, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 177
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI_WEIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 178
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v3, v15, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 179
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    move/from16 v3, v26

    .line 180
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 181
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v34

    invoke-static {v13, v1, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 182
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 183
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v13, v1, v8, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 184
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_LOCATION:Landroid/location/Location;

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 185
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 186
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 187
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 188
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 189
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 190
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING_VALUES:Ljava/util/List;

    const/4 v5, 0x2

    .line 192
    invoke-static {v13, v1, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 193
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_VIEW_DISPLAY_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 194
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->QUICK_VIEW_DISPLAY_MODE_VALUES:Ljava/util/List;

    .line 195
    invoke-static {v13, v1, v2, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 196
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v15, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 197
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 198
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 199
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 200
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 201
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->INPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v15, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 204
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 205
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 206
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 207
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_SURFACE_TEX_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v15, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 210
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 211
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 212
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 213
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v15, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 216
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 217
    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 218
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 219
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 221
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 222
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 223
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 224
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 225
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v8, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 226
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/16 v1, 0xe

    new-array v6, v1, [I

    fill-array-data v6, :array_40

    new-array v7, v1, [I

    fill-array-data v7, :array_41

    const v19, 0x7f110350

    const v23, 0x7f110350

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, v13

    move/from16 v24, v5

    move-object/from16 v5, v21

    move-object/from16 v37, v8

    move/from16 v8, v19

    move-object/from16 v38, v9

    move/from16 v9, v23

    move-object/from16 v19, v15

    move-object v15, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 227
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x1

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    invoke-static {v13, v1, v9, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 228
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 229
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 230
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 231
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 232
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 233
    invoke-virtual {v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v5, 0x7f11049c

    .line 234
    invoke-virtual {v3, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 235
    invoke-virtual {v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 236
    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION_PRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13, v1, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 238
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AA_OCR_VALUES:Ljava/util/List;

    const/4 v5, 0x2

    invoke-static {v13, v1, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 239
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 240
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 241
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-direct {v3}, Lcom/motorola/camera/settings/CaptureIntent;-><init>()V

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 242
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACING_VALUES:Ljava/util/List;

    invoke-static {v13, v1, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 243
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 244
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 245
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 246
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 247
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT_DEFAULT:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-static {v13, v1, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 248
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE_VALUES:Ljava/util/List;

    invoke-static {v13, v1, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 249
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/4 v4, 0x3

    .line 250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW_VALUES:Ljava/util/List;

    .line 252
    invoke-virtual {v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 253
    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 254
    invoke-virtual {v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 255
    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    .line 257
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v13, v3, v1, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 258
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MCF:Z

    .line 259
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v13, v3, v1, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 260
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 261
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 262
    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 263
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 264
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 265
    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 266
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 267
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 268
    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 269
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 270
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 271
    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 272
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "0"

    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 273
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 274
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 275
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 276
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVITY_TIMEOUT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 277
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MS_AVG_CAPTURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x14d

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    .line 279
    invoke-static {v13, v1, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 280
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 281
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 282
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_FEATURE_LIMITED_SHOW_TOAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 283
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 284
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 285
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->OIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v8, v27

    invoke-static {v13, v1, v3, v4, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 286
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 287
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v3, 0x5f

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 289
    invoke-static {v13, v1, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 290
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 291
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE_VALUES:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v13, v1, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 292
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/16 v23, 0x0

    .line 293
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v6, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v3, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v4, 0x7f11049b

    .line 295
    invoke-virtual {v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 296
    invoke-virtual {v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 297
    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 299
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 300
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->shouldFaceBeautyDefaultAuto()Z

    move-result v1

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VALUES:Ljava/util/List;

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_42

    new-array v7, v1, [I

    fill-array-data v7, :array_43

    const v25, 0x7f110356

    const v26, 0x7f110489

    move-object v1, v13

    move/from16 v8, v25

    move-object/from16 v39, v9

    move/from16 v9, v26

    move-object/from16 v25, v0

    move-object v0, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 302
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/4 v3, 0x4

    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 304
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_VALUES:Ljava/util/List;

    .line 305
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 306
    invoke-virtual {v2, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 307
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 308
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 310
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_WHITE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 311
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 312
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_RED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 313
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_NATURAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 314
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 315
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 316
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 317
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 318
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 319
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v13, v1, v15, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 320
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_DEFAULT_FEATURES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 321
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CURRENT_PHYSICAL_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 322
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x4

    move-object/from16 v7, v39

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 323
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 324
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v4, 0x3e99999a    # 0.3f

    .line 325
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    .line 327
    invoke-virtual {v3, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 328
    invoke-virtual {v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 329
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 331
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 332
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 333
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_EFFECT_TYPE:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 334
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 335
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 336
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FV_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 337
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 338
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 339
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_WIDE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 340
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 341
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 342
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ST_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 343
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 344
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 345
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_CU_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 346
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 347
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 348
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x0

    invoke-static {v13, v1, v9, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 349
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 350
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 351
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 352
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 353
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 354
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v3, [I

    fill-array-data v5, :array_44

    move-object v1, v13

    move-object v3, v7

    move-object v4, v0

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 355
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 356
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 357
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v9, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 358
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 359
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 360
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 361
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_LOW_LIGHT_SELFIE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 362
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_IMAGE_STABILIZATION_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 363
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 364
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 365
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 366
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SHADOW_REMOVAL_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 367
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 368
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 369
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_VALUES:Ljava/util/List;

    .line 370
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v4, 0x7f1104a0

    .line 371
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 372
    invoke-virtual {v2, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 373
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 374
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v2, 0x8fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 376
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 377
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ISO_ALLOW_VALUES:Ljava/util/List;

    .line 379
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_45

    .line 380
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->resources([I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v3, 0x7f11049d

    .line 381
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 382
    invoke-virtual {v2, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 383
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 384
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 386
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 387
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME_VALUES:Ljava/util/List;

    .line 388
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/16 v3, 0x22

    new-array v3, v3, [I

    fill-array-data v3, :array_46

    .line 389
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->resources([I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v3, 0x7f11049f

    .line 390
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 391
    invoke-virtual {v2, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 392
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 393
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 395
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    .line 396
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 397
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE_VALUES:Ljava/util/List;

    const-string v3, "Auto"

    invoke-static {v13, v1, v3, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 398
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SENSOR_MODE_VALUES:Ljava/util/List;

    const-string v3, "GyroScope"

    invoke-static {v13, v1, v3, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 399
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v3, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 400
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PROJECTION_MODE_VALUES:Ljava/util/List;

    const-string v3, "Equirectangular"

    invoke-static {v13, v1, v3, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 401
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_DETECTION_MODE_VALUES:Ljava/util/List;

    const-string v3, "HighQuality"

    invoke-static {v13, v1, v3, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 402
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v2, v19

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 403
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE_VALUES:Ljava/util/List;

    const-string v4, "REPEATING_REQUEST"

    invoke-static {v13, v1, v4, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 404
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v7, v8, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 405
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v8, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 406
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SAVE_OUTPUT_BY_ENGINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v8, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 407
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v13, v1, v7, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 408
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->GOAL_ANGLE_VALUES:Ljava/util/List;

    invoke-static {v13, v1, v3, v8, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 409
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x3f88f5c3    # 1.07f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_GAIN_VALUES:Ljava/util/List;

    invoke-static {v13, v1, v3, v8, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 410
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 411
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 412
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 413
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 414
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v10, v30

    .line 415
    invoke-static {v13, v1, v3, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 416
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_EX_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 417
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 418
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 419
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SUPPORT_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v7, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 420
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 421
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 422
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 423
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING_VALUES:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v13, v0, v1, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 424
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 425
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 426
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 427
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSIONS:Ljava/util/List;

    invoke-static {v13, v0, v1, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 428
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v13, v0, v15, v8, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 429
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_47

    new-array v7, v0, [I

    fill-array-data v7, :array_48

    const v8, 0x7f11034c

    const v0, 0x7f110495

    const/4 v4, 0x4

    move-object v1, v13

    move-object/from16 v5, v27

    move-object/from16 v40, v9

    move v9, v0

    move-object v0, v10

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 430
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v3, 0xfa0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS_VALUES:Ljava/util/List;

    const/4 v1, 0x7

    new-array v5, v1, [I

    fill-array-data v5, :array_49

    move-object v1, v13

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 431
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v3, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v14, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 432
    invoke-virtual {v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MLRN_GROUND_TRUTHS_VALUES:Ljava/util/List;

    .line 433
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    move-object/from16 v4, v25

    .line 434
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    .line 435
    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 436
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 438
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v27

    invoke-static {v13, v1, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 439
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 440
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 441
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMATS:Ljava/util/List;

    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_4a

    new-array v6, v0, [I

    fill-array-data v6, :array_4b

    move-object v1, v13

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[I[I)V

    .line 442
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v7, 0x2

    invoke-static {v13, v0, v15, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 443
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_AUTO_CAPTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v40

    invoke-static {v13, v0, v15, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 444
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 445
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 446
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "NONE"

    invoke-static {v13, v0, v1, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 447
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FOOD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 448
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 449
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 450
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 451
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 452
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_HOLIDAY_LIGHTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 453
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_SUNSET_SUNRISE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 454
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MOON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 455
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FIREWORKS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 456
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 457
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TEXT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 458
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_BLUESKY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 459
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FLOWER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 460
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_GREENERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 461
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AI_SCENE_ADJUSTMENT_SHOW_PILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 462
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 463
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 464
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 465
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 466
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_GROUPSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 467
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 468
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_VALUES:Ljava/util/List;

    const-string v2, "AUTO"

    const/4 v3, 0x1

    invoke-static {v13, v0, v2, v3, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 469
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v9, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 470
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_VALUES:Ljava/util/List;

    invoke-static {v13, v0, v2, v3, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 471
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v7, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 472
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_VALUES:Ljava/util/List;

    invoke-static {v13, v0, v2, v3, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 473
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomDefaultOff()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 474
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v5, v7, [I

    fill-array-data v5, :array_4c

    move-object v1, v13

    move-object v4, v10

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 475
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v5, v7, [I

    fill-array-data v5, :array_4d

    move-object v3, v15

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    const v0, 0x7f110269

    new-array v1, v7, [I

    .line 476
    fill-array-data v1, :array_4e

    .line 477
    invoke-static {}, Lcom/motorola/camera/AppFeatures;->getInstance()Lcom/motorola/camera/AppFeatures;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_HDR10_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f11026a

    new-array v1, v7, [I

    .line 478
    fill-array-data v1, :array_4f

    :cond_1
    move-object v8, v1

    .line 479
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v6, v7, [I

    fill-array-data v6, :array_50

    new-array v7, v7, [I

    fill-array-data v7, :array_51

    const/4 v4, 0x2

    move-object v1, v13

    move-object v3, v15

    move-object v5, v10

    move-object/from16 v41, v9

    move v9, v0

    move-object/from16 v40, v10

    move v10, v0

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 480
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MTK_VIDEO_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_52

    move-object/from16 v4, v40

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 481
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v40

    invoke-static {v13, v1, v15, v0, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 482
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 483
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 484
    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 485
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 486
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "7"

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 487
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUMP_CAPTURE_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 488
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUMP_FACE_DETECT_INFO_PER_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 489
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    invoke-static {v13, v1, v2, v0, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 490
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SEQ_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 491
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 492
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 493
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMATS:Ljava/util/List;

    .line 494
    invoke-static {v13, v1, v2, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 495
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 496
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 497
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 498
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_SINGLE_SESSION_REMOSAIC_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 499
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 500
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW_MAX_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 501
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CACHE_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 502
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 503
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_DEF_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 504
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CACHE_SHORTCUT_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 505
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG_CACHE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v14, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 506
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_IGNORE_SHOT_CONDITIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 507
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_FOUR_STREAMS_QCFA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 508
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LIMIT_SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 509
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 510
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BG_SERVICE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 511
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x1

    invoke-static {v13, v1, v15, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 512
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 513
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_TURN_ON_LUX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 514
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getFlashTurnOnLux()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 515
    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 516
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_TURN_OFF_LUX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 517
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getFlashTurnOffLux()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 518
    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 519
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 520
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 521
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v2, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 522
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x1

    .line 523
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 524
    invoke-static {v13, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 525
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 526
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 527
    invoke-static {v13, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 528
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 529
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 530
    invoke-static {v13, v1, v3, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 531
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 532
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 533
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 534
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 535
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 536
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 537
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 538
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 539
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 540
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 541
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 542
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 543
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 544
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 545
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 546
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 547
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 548
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 549
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 550
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v41

    invoke-static {v13, v0, v8, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 551
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 552
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 553
    invoke-static {v13, v0, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 554
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x2

    invoke-static {v13, v0, v8, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 555
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v0, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 556
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 557
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_SLIDE_ROW_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 558
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 559
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIGRATE_CAMERA_ID_TO_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v8, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 560
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v0, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 561
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v0, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 562
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 563
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v0, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 564
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 565
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 566
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 567
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 568
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MTK_QUICK_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v8, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 569
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v14, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 570
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "Original"

    invoke-static {v13, v0, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 571
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 572
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v8, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 573
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v8, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 574
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SYSTEM_SETTING_TRANSITION_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v13, v0, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 575
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_MANUAL_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 576
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 577
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x1

    invoke-static {v13, v0, v15, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 578
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 579
    invoke-static {}, Lcom/motorola/camera/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartHighResDefaultOff()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move/from16 v5, v24

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_53

    new-array v7, v0, [I

    fill-array-data v7, :array_54

    new-array v0, v0, [I

    fill-array-data v0, :array_55

    const v14, 0x7f110377

    const v18, 0x7f110377

    const/4 v4, 0x2

    move-object v1, v13

    move-object v5, v9

    move-object/from16 v42, v8

    move-object v8, v0

    move-object v0, v9

    move v9, v14

    move-object v14, v10

    move/from16 v10, v18

    .line 580
    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    .line 581
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_PREVIEW_ERROR_DELAY_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_ERROR_DELAY_TIMES:Ljava/util/List;

    move/from16 v1, v24

    .line 582
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x0

    move-object v1, v13

    move-object v6, v11

    .line 583
    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 584
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SESSION_UUID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 585
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SMOOTH_ZOOM_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 586
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_HIGH_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 587
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_NORMAL_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v13, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 588
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ISP_HIDL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v1, v15, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    .line 589
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v3, [I

    fill-array-data v6, :array_56

    new-array v7, v3, [I

    fill-array-data v7, :array_57

    const v8, 0x7f110369

    const v9, 0x7f110369

    const/4 v5, 0x4

    move-object v1, v13

    move-object v3, v4

    move v4, v5

    move-object v5, v0

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    .line 590
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AUTO_ENHANCE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x2

    move-object/from16 v2, v42

    invoke-static {v13, v0, v2, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    .line 591
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "getSettingsMap dur:"

    .line 592
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v13

    :array_0
    .array-data 4
        0x7f110358
        0x7f11035a
        0x7f110384
        0x7f110359
    .end array-data

    :array_1
    .array-data 4
        0x7f0801a8
        0x7f0801aa
        0x7f0801ad
        0x7f0801a9
    .end array-data

    :array_2
    .array-data 4
        0x7f110358
        0x7f110384
        0x7f110383
    .end array-data

    :array_3
    .array-data 4
        0x7f0801ab
        0x7f0801ad
        0x7f0801ac
    .end array-data

    :array_4
    .array-data 4
        0x7f110355
        0x7f110354
    .end array-data

    :array_5
    .array-data 4
        0x7f11003b
        0x7f110510
    .end array-data

    :array_6
    .array-data 4
        0x7f08016d
        0x7f08016c
    .end array-data

    :array_7
    .array-data 4
        0x7f110395
        0x7f110398
        0x7f110397
    .end array-data

    :array_8
    .array-data 4
        0x7f110531
        0x7f110532
        0x7f110530
    .end array-data

    :array_9
    .array-data 4
        0x7f080152
        0x7f080154
        0x7f080153
    .end array-data

    :array_a
    .array-data 4
        0x7f110395
        0x7f110398
        0x7f110397
    .end array-data

    :array_b
    .array-data 4
        0x7f110531
        0x7f110532
        0x7f110530
    .end array-data

    :array_c
    .array-data 4
        0x7f080152
        0x7f080154
        0x7f080153
    .end array-data

    :array_d
    .array-data 4
        0x7f110395
        0x7f110398
        0x7f110397
    .end array-data

    :array_e
    .array-data 4
        0x7f110531
        0x7f110532
        0x7f110530
    .end array-data

    :array_f
    .array-data 4
        0x7f080152
        0x7f080154
        0x7f080153
    .end array-data

    :array_10
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_11
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_12
    .array-data 4
        0x7f11022d
        0x7f11022e
        0x7f11022f
    .end array-data

    :array_13
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_14
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_15
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_16
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_17
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_18
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_19
    .array-data 4
        0x7f110368
        0x7f110367
    .end array-data

    :array_1a
    .array-data 4
        0x7f080227
        0x7f080226
    .end array-data

    :array_1b
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_1c
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_1d
    .array-data 4
        0x7f110352
        0x7f110351
    .end array-data

    :array_1e
    .array-data 4
        0x7f08016f
        0x7f08016e
    .end array-data

    :array_1f
    .array-data 4
        0x7f110352
        0x7f110351
    .end array-data

    :array_20
    .array-data 4
        0x7f0801ba
        0x7f0801b9
    .end array-data

    :array_21
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_22
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_23
    .array-data 4
        0x7f110451
        0x7f110450
    .end array-data

    :array_24
    .array-data 4
        0x7f080249
        0x7f080249
    .end array-data

    :array_25
    .array-data 4
        0x7f110394
        0x7f110393
    .end array-data

    :array_26
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_27
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_28
    .array-data 4
        0x7f110380
        0x7f11037f
        0x7f110381
    .end array-data

    :array_29
    .array-data 4
        0x7f08024e
        0x7f08024d
        0x7f08024f
    .end array-data

    :array_2a
    .array-data 4
        0x7f1103a9
        0x7f1103b5
        0x7f1103aa
        0x7f1103b7
        0x7f1103af
        0x7f1103b1
        0x7f1103ae
        0x7f1103ac
        0x7f1103a4
        0x7f1103a5
        0x7f1103b4
        0x7f1103ac
        0x7f11039d
        0x7f1103a8
        0x7f1103a0
        0x7f1103a3
        0x7f1103a8
        0x7f1103b6
        0x7f1103a3
        0x7f1103b3
        0x7f1103a2
        0x7f1103b0
        0x7f1103a1
        0x7f1103a7
        0x7f1103b5
        0x7f1103ab
    .end array-data

    :array_2b
    .array-data 4
        0x7f0801ed
        0x7f0801fd
        0x7f0801ec
        0x7f0801e6
        0x7f0801fb
        0x7f0801fa
        0x7f0801f3
        0x7f0801f1
        0x7f0801e2
        0x7f0801e7
        0x7f0801fc
        0x7f0801f1
        0x7f0801e1
        0x7f0801eb
        0x7f0801e3
        0x7f0801f8
        0x7f0801eb
        0x7f0801f2
        0x7f0801f8
        0x7f080309
        0x7f0801e5
        0x7f0801f9
        0x7f0801e4
        0x7f0801ea
        0x7f0801fd
        0x7f0801ee
    .end array-data

    :array_2c
    .array-data 4
        0x7f110262
        0x7f110261
    .end array-data

    :array_2d
    .array-data 4
        0x7f110318
        0x7f110315
        0x7f110316
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110315
        0x7f110315
        0x7f110316
    .end array-data

    :array_2e
    .array-data 4
        0x7f080218
        0x7f080219
        0x7f08021b
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021a
        0x7f08021a
        0x7f08021b
    .end array-data

    :array_2f
    .array-data 4
        0x7f110361
        0x7f110363
        0x7f110365
        0x7f110360
        0x7f110362
        0x7f110364
        0x7f110366
    .end array-data

    :array_30
    .array-data 4
        0x7f0801b2
        0x7f0801b4
        0x7f0801b6
        0x7f0801b1
        0x7f0801b3
        0x7f0801b5
        0x7f0801b7
    .end array-data

    :array_31
    .array-data 4
        0x7f110318
        0x7f110315
        0x7f110316
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110315
        0x7f110315
        0x7f110316
    .end array-data

    :array_32
    .array-data 4
        0x7f080218
        0x7f080219
        0x7f08021b
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021a
        0x7f08021a
        0x7f08021b
    .end array-data

    :array_33
    .array-data 4
        0x7f110361
        0x7f110363
        0x7f110365
        0x7f110360
        0x7f110362
        0x7f110364
        0x7f110366
    .end array-data

    :array_34
    .array-data 4
        0x7f110361
        0x7f110363
        0x7f110365
        0x7f110533
        0x7f110534
        0x7f110535
        0x7f110536
    .end array-data

    :array_35
    .array-data 4
        0x7f0801b2
        0x7f0801b4
        0x7f0801b6
        0x7f0801b1
        0x7f0801b3
        0x7f0801b5
        0x7f0801b7
    .end array-data

    :array_36
    .array-data 4
        0x7f11037b
        0x7f11037d
        0x7f11037c
    .end array-data

    :array_37
    .array-data 4
        0x7f110547
        0x7f110539
        0x7f110538
    .end array-data

    :array_38
    .array-data 4
        0x7f080245
        0x7f080247
        0x7f080246
    .end array-data

    :array_39
    .array-data 4
        0x7f110387
        0x7f110386
    .end array-data

    :array_3a
    .array-data 4
        0x7f110541
        0x7f110540
    .end array-data

    :array_3b
    .array-data 4
        0x7f080256
        0x7f080255
    .end array-data

    :array_3c
    .array-data 4
        0x7f110399
        0x7f11038c
        0x7f11039c
        0x7f11039b
    .end array-data

    :array_3d
    .array-data 4
        0x7f0801db
        0x7f0801d9
        0x7f0801db
        0x7f0801da
    .end array-data

    :array_3e
    .array-data 4
        0x7f11037d
        0x7f11037c
    .end array-data

    :array_3f
    .array-data 4
        0x7f080247
        0x7f080246
    .end array-data

    :array_40
    .array-data 4
        0x7f110318
        0x7f110315
        0x7f110316
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110317
        0x7f110315
        0x7f110315
        0x7f110316
    .end array-data

    :array_41
    .array-data 4
        0x7f080218
        0x7f080219
        0x7f08021b
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021c
        0x7f08021a
        0x7f08021a
        0x7f08021b
    .end array-data

    :array_42
    .array-data 4
        0x7f11038d
        0x7f11038e
        0x7f11038f
    .end array-data

    :array_43
    .array-data 4
        0x7f080179
        0x7f08017d
        0x7f08017c
    .end array-data

    :array_44
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_45
    .array-data 4
        0x7f110329
        0x7f110349
        0x7f11034a
        0x7f110344
        0x7f110346
        0x7f110348
        0x7f11034b
        0x7f110345
        0x7f110347
    .end array-data

    :array_46
    .array-data 4
        0x7f110329
        0x7f110437
        0x7f110431
        0x7f11042e
        0x7f11042a
        0x7f110425
        0x7f110422
        0x7f110438
        0x7f110434
        0x7f11042f
        0x7f11042b
        0x7f110426
        0x7f110423
        0x7f11043a
        0x7f110436
        0x7f110432
        0x7f11042d
        0x7f110429
        0x7f110424
        0x7f110421
        0x7f110439
        0x7f110435
        0x7f110430
        0x7f11042c
        0x7f110428
        0x7f110420
        0x7f11043b
        0x7f11043d
        0x7f11043e
        0x7f11043f
        0x7f110440
        0x7f11041e
        0x7f11041f
        0x7f11043c
    .end array-data

    :array_47
    .array-data 4
        0x7f11034d
        0x7f11034f
        0x7f11034e
    .end array-data

    :array_48
    .array-data 4
        0x7f080159
        0x7f08015b
        0x7f08015a
    .end array-data

    :array_49
    .array-data 4
        0x7f110293
        0x7f110294
        0x7f110295
        0x7f110296
        0x7f110297
        0x7f110298
        0x7f110292
    .end array-data

    :array_4a
    .array-data 4
        0x7f11035c
        0x7f11035e
        0x7f11035d
    .end array-data

    :array_4b
    .array-data 4
        0x7f0801ae
        0x7f0801af
        0x7f0801b0
    .end array-data

    :array_4c
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_4d
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_4e
    .array-data 4
        0x7f0801c0
        0x7f0801c1
    .end array-data

    :array_4f
    .array-data 4
        0x7f0801c2
        0x7f0801c3
    .end array-data

    :array_50
    .array-data 4
        0x7f11036d
        0x7f11036c
    .end array-data

    :array_51
    .array-data 4
        0x7f11053c
        0x7f11053b
    .end array-data

    :array_52
    .array-data 4
        0x7f1103bc
        0x7f110391
    .end array-data

    :array_53
    .array-data 4
        0x7f110379
        0x7f110378
    .end array-data

    :array_54
    .array-data 4
        0x7f110523
        0x7f110522
    .end array-data

    :array_55
    .array-data 4
        0x7f080241
        0x7f080240
    .end array-data

    :array_56
    .array-data 4
        0x7f11036b
        0x7f11036a
    .end array-data

    :array_57
    .array-data 4
        0x7f0801bc
        0x7f0801bb
    .end array-data
.end method
