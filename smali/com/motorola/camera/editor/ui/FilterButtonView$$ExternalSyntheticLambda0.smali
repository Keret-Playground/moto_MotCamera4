.class public final synthetic Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/ui/FilterButtonView;

.field public final synthetic f$1:Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/ui/FilterButtonView;Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;

    sget v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->$r8$clinit:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity$2;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity$2;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity$2;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 6
    iget-object v5, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 7
    iget v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v6, v1, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-eqz v6, :cond_3

    goto/16 :goto_5

    .line 8
    :cond_3
    iget-object v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    goto/16 :goto_5

    .line 9
    :cond_4
    iput v1, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    const/4 v5, 0x0

    .line 10
    invoke-static {v1}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->getId(I)Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v6, v2, :cond_8

    if-eq v6, v8, :cond_5

    move v2, v3

    goto/16 :goto_4

    .line 12
    :cond_5
    iget-object v5, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    new-array v5, v7, [I

    .line 13
    iget-object v6, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v6, v6, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 14
    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 15
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v9, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v9, v9, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 17
    invoke-static {v6, v7, v9, v5, v3}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 18
    :cond_7
    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v8, v5, v8

    aget v5, v5, v2

    invoke-virtual {v4, v8, v5, v6}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    .line 19
    :goto_2
    iget-object v5, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 20
    :cond_8
    iget-object v5, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_3

    :cond_9
    new-array v5, v7, [I

    .line 21
    iget-object v6, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v6, v6, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 22
    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 23
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v9, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v9, v9, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    .line 24
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 25
    invoke-static {v6, v7, v9, v5, v3}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_3

    .line 26
    :cond_a
    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v8, v5, v8

    aget v5, v5, v2

    invoke-virtual {v4, v8, v5, v6}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    .line 27
    sget-object v5, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 28
    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 29
    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT_SHADOW_REMOVAL:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    .line 30
    :cond_b
    iget-object v5, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 31
    iget-object v6, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_3

    .line 32
    :cond_c
    new-instance v6, Lcom/motorola/camera/shadow/ShadowRemovalTask;

    invoke-direct {v6, v5, v4}, Lcom/motorola/camera/shadow/ShadowRemovalTask;-><init>(ILcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;)V

    .line 33
    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v2, [Landroid/graphics/Bitmap;

    iget-object v8, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    aput-object v8, v7, v3

    invoke-virtual {v6, v5, v7}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    :goto_3
    iget-object v5, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_4

    .line 36
    :cond_d
    iget-object v3, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    move v3, v2

    .line 37
    :goto_4
    iget-object v6, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v6, v6, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v6, v6

    .line 38
    iget-object v7, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    .line 39
    iget-object v6, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_e

    .line 40
    iget-object v2, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v2}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    :cond_e
    if-eqz v3, :cond_f

    .line 41
    iget-object v2, v4, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v2}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 42
    :cond_f
    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocEditorActivity;->updateSaveButtonEnableState()V

    .line 43
    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$2;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 44
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 46
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v2, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :goto_6
    return-void
.end method
