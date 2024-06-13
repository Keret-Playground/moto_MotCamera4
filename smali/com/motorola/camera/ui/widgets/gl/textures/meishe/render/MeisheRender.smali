.class public final Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;
.super Ljava/lang/Object;
.source "MeisheRender.java"


# static fields
.field public static final EFFECT_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRAME_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LICENSE_FILES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAnimatedStickerEffect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsEffect;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

.field public mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

.field public mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field public mEffectRenderInit:Z

.field public volatile mPreviousEffectIndex:I

.field public volatile mSelectedEffectIndex:I

.field public volatile mSelectedFrameIndex:I

.field public mTimeStamp:J

.field public mVideoFxAssetEffect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsEffect;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-direct {v1}, Lcom/meicam/effect/sdk/NvsVideoResolution;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    return-void
.end method


# virtual methods
.method public final drawFrameToGlView(III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mTimeStamp:J

    sub-long/2addr v2, v4

    .line 2
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-eqz v4, :cond_b

    .line 3
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iget v6, v5, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    .line 4
    iget v5, v5, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    .line 5
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-nez v8, :cond_1

    const/16 v8, 0x8

    .line 7
    invoke-virtual {v7, v8}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    .line 8
    :cond_1
    iget-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 9
    iput-wide v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    .line 10
    :cond_2
    iget-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    sub-long/2addr v2, v7

    .line 11
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const-wide/16 v9, 0x3e8

    mul-long/2addr v2, v9

    .line 12
    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-nez v7, :cond_3

    goto/16 :goto_2

    .line 13
    :cond_3
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_2

    .line 14
    :cond_4
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v7, :cond_5

    goto/16 :goto_2

    .line 15
    :cond_5
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput v6, v10, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    .line 16
    iput v5, v10, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 17
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 18
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v4

    new-instance v6, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v6, v5, v5}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    const-string v5, "Transform 2D"

    .line 19
    invoke-virtual {v4, v5, v6}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v4

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_6

    goto :goto_0

    :cond_6
    move v7, v1

    goto :goto_1

    :cond_7
    :goto_0
    add-int/lit16 v7, v1, 0xb4

    .line 20
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rem-int/lit16 v7, v7, 0x168

    :goto_1
    int-to-double v9, v7

    const-string v7, "Rotation"

    .line 21
    invoke-virtual {v4, v7, v9, v10}, Lcom/meicam/effect/sdk/NvsEffect;->setFloatVal(Ljava/lang/String;D)V

    .line 22
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/16 v18, 0x0

    move-object v12, v4

    move/from16 v13, p1

    move/from16 v15, p2

    move-wide/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    .line 23
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/4 v14, 0x0

    move-object v15, v7

    move-object v7, v9

    move/from16 v9, p2

    move/from16 v11, p1

    move-wide v12, v2

    invoke-virtual/range {v7 .. v14}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    if-eq v1, v6, :cond_8

    if-ne v1, v5, :cond_9

    :cond_8
    add-int/lit16 v1, v1, 0xb4

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    :cond_9
    neg-int v1, v1

    int-to-double v5, v1

    .line 25
    invoke-virtual {v4, v15, v5, v6}, Lcom/meicam/effect/sdk/NvsEffect;->setFloatVal(Ljava/lang/String;D)V

    .line 26
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/16 v18, 0x0

    move-object v12, v4

    move/from16 v13, p1

    move/from16 v15, p2

    move-wide/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    goto :goto_2

    :cond_a
    const/4 v14, 0x0

    move/from16 v9, p1

    move/from16 v11, p2

    move-wide v12, v2

    .line 27
    invoke-virtual/range {v7 .. v14}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    :cond_b
    :goto_2
    return-void
.end method

.method public final installAssetsPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/effect/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v5, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final switchFrameIndex(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/effect/sdk/NvsEffect;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    .line 6
    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    .line 8
    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    .line 9
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :cond_3
    :goto_0
    return-void
.end method
