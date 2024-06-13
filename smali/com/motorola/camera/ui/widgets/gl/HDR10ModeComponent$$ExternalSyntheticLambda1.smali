.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$PixelCopyListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

.field public final synthetic f$1:[F

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$1:[F

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$2:[F

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/graphics/Bitmap;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$1:[F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$2:[F

    .line 1
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 2
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 6
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p1

    .line 7
    :try_start_1
    invoke-virtual {v4, v5, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit v2

    .line 10
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    .line 11
    iget-boolean v0, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mHasPendingAnimation:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mHasPendingAnimation:Z

    .line 13
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/PreviewChange;

    .line 14
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    .line 15
    iget v4, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchTargetRatio:F

    .line 16
    iget v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v6, v1, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 17
    move-object v7, v2

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 18
    iget-object v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 19
    iget v8, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    cmpl-float v9, v8, v7

    if-lez v9, :cond_0

    div-float/2addr v8, v7

    goto :goto_0

    :cond_0
    div-float v8, v7, v8

    .line 20
    :goto_0
    iget-boolean v7, v1, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 21
    invoke-static {v5, v6, v8, v7, v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v5

    .line 22
    iget v6, v1, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget-object v7, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v4, v6, v7, v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Landroid/graphics/RectF;

    move-result-object v4

    .line 23
    iget v6, v1, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget-object v7, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v5, v6, v7, v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Landroid/graphics/RectF;

    move-result-object v2

    .line 24
    iput v5, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchTargetRatio:F

    .line 25
    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 26
    iget-boolean v1, v1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 27
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 28
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 29
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 30
    invoke-virtual {v2, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 31
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda7;

    invoke-direct {v11, v12, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;Z)V

    .line 32
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    .line 33
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    .line 34
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v2, 0x4

    .line 35
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 36
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v8, v1

    .line 37
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 38
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v9, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v13

    :goto_2
    if-eqz v9, :cond_3

    .line 39
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    .line 40
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 42
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    move v14, v0

    goto :goto_3

    :cond_3
    move v14, v3

    .line 43
    :goto_3
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x3

    .line 44
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    .line 45
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$1;

    move-object/from16 v0, v17

    move-object v1, v12

    move-object v2, v5

    move-object v5, v3

    move v3, v4

    move v4, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v6

    move v6, v8

    move-object v8, v7

    move v7, v9

    move-object v9, v8

    move v8, v14

    move-object v14, v9

    move-object v9, v15

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v18, 0x64

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 46
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v1, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v14, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 47
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v14, v13}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_4

    .line 48
    :cond_4
    iget-boolean v2, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    if-eqz v2, :cond_5

    iget-boolean v1, v1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    if-eqz v1, :cond_5

    .line 49
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 50
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 51
    iput-boolean v0, v12, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    .line 52
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    :cond_5
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 53
    :try_start_3
    monitor-exit v4

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
