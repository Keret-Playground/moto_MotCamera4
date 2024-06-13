.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 10

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    if-eqz p0, :cond_7

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    .line 4
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 5
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    .line 6
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->clickPosition:Landroid/graphics/PointF;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    .line 11
    instance-of v3, v0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-virtual {v0, v3}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->setVideoResolution(Lcom/meicam/effect/sdk/NvsVideoResolution;)V

    .line 13
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iget v5, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x44340000    # 720.0f

    div-float v7, v5, v6

    .line 15
    iget v4, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    int-to-float v4, v4

    div-float v6, v4, v6

    .line 16
    iget v8, p1, Landroid/graphics/PointF;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    sub-float/2addr v8, v5

    div-float/2addr v8, v7

    iput v8, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v9

    .line 17
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, p1

    div-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 18
    invoke-virtual {v0, v3}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->setTranslation(Landroid/graphics/PointF;)V

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    .line 20
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v3, -0x1

    .line 21
    iput-wide v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    .line 22
    iput v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    .line 23
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    .line 24
    :goto_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_7

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_5

    .line 25
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    .line 26
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 27
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    .line 28
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->switchFrameIndex(I)V

    goto :goto_1

    .line 29
    :cond_4
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->switchFrameIndex(I)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    if-ne v0, p1, :cond_7

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-eqz p1, :cond_7

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    if-ne p1, v3, :cond_6

    goto :goto_1

    .line 31
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :cond_7
    :goto_1
    return-void
.end method
