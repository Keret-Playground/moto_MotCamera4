.class public Lcom/motorola/camera/editor/DocEditorActivity;
.super Landroid/app/Activity;
.source "DocEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/camera/editor/load/LoadDocJpegListener;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;
.implements Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public hasRotated:Z

.field public final jpegSaveListener:Lcom/motorola/camera/editor/DocEditorActivity$1;

.field public mAdjustButton:Landroid/widget/Button;

.field public mAdjustImage:Landroid/widget/ImageView;

.field public mAdjustLayout:Landroid/widget/RelativeLayout;

.field public mAdjusted:Z

.field public mBackButton:Landroid/widget/ImageButton;

.field public mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

.field public mDeleteButton:Landroid/widget/ImageButton;

.field public mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

.field public mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

.field public mDocServiceMode:Z

.field public mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

.field public mInitFilter:I

.field public mInitRotate:F

.field public volatile mIsActivityRunning:Z

.field public mIsFromCamera:Z

.field public mIsSaveComplete:Z

.field public mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

.field public mJpegLoadFinish:Z

.field public mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

.field public mProcessLayout:Landroid/widget/LinearLayout;

.field public mProcessTextView:Landroid/widget/TextView;

.field public final mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

.field public mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

.field public mReviewLayout:Landroid/widget/RelativeLayout;

.field public mRotateButton:Landroid/widget/ImageButton;

.field public mSaveButton:Landroid/widget/Button;

.field public mSavedEdit:Z

.field public final mShadowRemovalTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/shadow/ShadowRemovalTask;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public final mUiHandler:Landroid/os/Handler;

.field public originalURI:Landroid/net/Uri;


# direct methods
.method public static $r8$lambda$h2pf6d9OQmVKfz0pHZXWFOPbBOc(Lcom/motorola/camera/editor/DocEditorActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 5
    iput-boolean v0, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/DocEditorActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsFromCamera:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    .line 10
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    .line 15
    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    .line 16
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    .line 17
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    .line 18
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    .line 19
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/editor/DocEditorActivity$1;

    .line 20
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$3;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

    return-void
.end method


# virtual methods
.method public final clearShadowRemovalTasks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shadow/ShadowRemovalTask;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final createBitmap(II[B)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final initRectWithOriginalPoints()V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v4, :cond_0

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v4, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v5, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    iget v6, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [F

    .line 5
    iput-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    .line 6
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    .line 7
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v1, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    .line 8
    iget-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10
    iput v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    float-to-int v7, v0

    .line 11
    sget-object v8, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v9, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v10, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v11, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v12, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v13, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v14, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v15, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v3, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    move-object/from16 p0, v1

    const/16 v1, 0x5a

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    if-eq v7, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v7, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v7, v1, :cond_2

    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v7, v0, v3

    if-eqz v7, :cond_6

    const/high16 v7, 0x43870000    # 270.0f

    cmpl-float v7, v0, v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v1

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v7, v22

    :goto_3
    if-eqz v7, :cond_7

    move v8, v6

    goto :goto_4

    :cond_7
    move v8, v5

    :goto_4
    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_5

    :cond_8
    move v7, v6

    .line 44
    :goto_5
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    cmpl-float v10, v0, v9

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v10, :cond_9

    neg-int v13, v5

    int-to-float v13, v13

    div-float/2addr v13, v11

    neg-int v14, v6

    int-to-float v14, v14

    div-float/2addr v14, v11

    .line 45
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 47
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x43340000    # 180.0f

    rem-float/2addr v0, v3

    cmpl-float v0, v0, v9

    if-nez v0, :cond_a

    move/from16 v3, v22

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    if-eqz v3, :cond_b

    move v0, v6

    goto :goto_7

    :cond_b
    move v0, v5

    :goto_7
    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v5, v6

    :goto_8
    if-ne v0, v8, :cond_d

    if-eq v5, v7, :cond_e

    :cond_d
    int-to-float v1, v8

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, v7

    int-to-float v3, v5

    div-float/2addr v0, v3

    .line 48
    invoke-virtual {v12, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_e
    if-eqz v10, :cond_f

    int-to-float v0, v8

    div-float/2addr v0, v11

    int-to-float v1, v7

    div-float/2addr v1, v11

    .line 49
    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 50
    :cond_f
    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 52
    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object/from16 v7, p0

    .line 54
    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v1, p0

    if-eq v1, v0, :cond_10

    .line 55
    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    :cond_10
    new-instance v0, Landroid/util/Size;

    iget-object v1, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v4, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    .line 57
    invoke-virtual {v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    return-void
.end method

.method public final loadBitmap()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f11014b

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ORIGINAL"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    const-string v1, "/REQUIRE_ORIGINAL"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-lez v1, :cond_3

    .line 14
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 16
    :cond_4
    :goto_0
    new-instance v1, Lcom/motorola/camera/editor/load/LoadDocJpegTask;

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2, p0}, Lcom/motorola/camera/editor/load/LoadDocJpegTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V

    .line 17
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->saveDocument()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->onBackPressed()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->clearShadowRemovalTasks()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->saveDocument()V

    goto/16 :goto_4

    .line 5
    :sswitch_1
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 7
    iget-boolean v4, v3, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    iget v4, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/16 v5, 0x5a

    int-to-float v5, v5

    add-float v6, v4, v5

    .line 9
    iput v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    const/high16 v9, 0x43b40000    # 360.0f

    if-gez v8, :cond_3

    add-float/2addr v6, v9

    .line 10
    iput v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    goto :goto_0

    :cond_3
    cmpl-float v8, v6, v9

    if-ltz v8, :cond_4

    sub-float/2addr v6, v9

    .line 11
    iput v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 12
    :cond_4
    :goto_0
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 13
    sget-boolean v6, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 14
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v6

    if-nez v6, :cond_6

    .line 15
    iget-boolean v6, v3, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    if-eqz v6, :cond_5

    .line 16
    iput v4, v3, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_1

    :cond_5
    sub-float/2addr v4, p1

    add-float/2addr v4, v9

    rem-float/2addr v4, v9

    .line 17
    iput v4, v3, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_6
    :goto_1
    cmpg-float p1, v5, v7

    if-gez p1, :cond_7

    const/4 v4, -0x1

    goto :goto_2

    :cond_7
    move v4, v2

    .line 18
    :goto_2
    iput v4, v3, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    new-array v0, v0, [F

    aput v7, v0, v1

    if-gez p1, :cond_8

    neg-float v5, v5

    :cond_8
    aput v5, v0, v2

    .line 19
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iput-boolean v2, v3, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    .line 22
    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    iput-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    goto/16 :goto_4

    .line 31
    :sswitch_2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "ANALYTICS_DOC_EDITOR_EDGES"

    invoke-virtual {p1, v3, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 35
    iget-boolean v3, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-eqz v3, :cond_9

    .line 36
    iget-object v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->getAdjustedPoints()[F

    move-result-object p1

    iput-object p1, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateAdjustBitmap([F)V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 39
    iput-boolean v1, p1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    .line 40
    iput-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->releaseResources()V

    .line 44
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->releaseResources()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_4

    .line 46
    :sswitch_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110144

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110143

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    const v2, 0x7f110146

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    const v2, 0x7f110145

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 54
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_4

    .line 58
    :sswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->onBackPressed()V

    goto :goto_4

    .line 59
    :sswitch_5
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsFromCamera:Z

    if-eqz p1, :cond_b

    .line 60
    sget-boolean p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    if-eqz p1, :cond_a

    goto :goto_3

    .line 61
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iput-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    goto :goto_4

    :cond_b
    :goto_3
    const/4 p1, 0x3

    .line 64
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0058 -> :sswitch_5
        0x7f0a0088 -> :sswitch_4
        0x7f0a0147 -> :sswitch_3
        0x7f0a0162 -> :sswitch_2
        0x7f0a0358 -> :sswitch_1
        0x7f0a035e -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->registerReceiver(Z)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x8

    .line 4
    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v3, 0x9

    .line 5
    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v3, 0x400

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x80

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    const v2, 0x7f0d0063

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0a0088

    .line 11
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0335

    .line 13
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0336

    .line 14
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0351

    .line 15
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0350

    .line 16
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/ScaleImageView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const v2, 0x7f0a01ca

    .line 17
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/FilterButtonView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    .line 18
    new-instance v3, Lcom/motorola/camera/editor/DocEditorActivity$2;

    invoke-direct {v3, v1}, Lcom/motorola/camera/editor/DocEditorActivity$2;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    .line 19
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 20
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    iget-object v6, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, 0x2

    div-int/2addr v6, v9

    iget-object v10, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v10

    sub-int v10, v6, v10

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    invoke-static {}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->values()[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    move-result-object v7

    array-length v8, v7

    move v10, v5

    :goto_0
    if-ge v10, v8, :cond_1

    aget-object v12, v7, v10

    .line 27
    new-instance v13, Landroid/widget/TextView;

    iget-object v14, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v14, 0x7f120202

    .line 30
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/high16 v14, 0x41700000    # 15.0f

    .line 31
    invoke-virtual {v13, v9, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    iget-object v15, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 33
    iget v9, v12, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mText:I

    .line 34
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget v9, v12, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mId:I

    .line 36
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v9, 0x11

    .line 37
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    iget-object v9, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-static {v9, v14}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v9

    .line 39
    invoke-virtual {v13, v9, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 40
    new-instance v9, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2, v3}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/FilterButtonView;Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;)V

    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x2

    goto :goto_0

    .line 42
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    sget-object v3, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->ORIGINAL:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :goto_1
    const v2, 0x7f0a0058

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustButton:Landroid/widget/Button;

    .line 47
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a035e

    .line 48
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    .line 49
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "DOCUMENT_SERVICE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    .line 51
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f0a0358

    .line 52
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    const v3, 0x7f080223

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0147

    .line 55
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    .line 56
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a005c

    .line 57
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a005b

    .line 58
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    const v2, 0x7f0a012e

    .line 59
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/DocRectangleView;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    const v2, 0x7f0a005d

    .line 60
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    iput-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    .line 61
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->setDocAdjustListener(Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;)V

    const v2, 0x7f0a0162

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 63
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 65
    iput-boolean v5, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_DOCUMENT_CACHE_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SCAN_FROM_CAMERA"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mIsFromCamera:Z

    const-string v2, "DocEditorActivity"

    if-eqz v0, :cond_2

    .line 68
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_DOCUMENT_ORIGINAL_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    goto :goto_3

    .line 74
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    if-nez v0, :cond_3

    const-string v0, "Original URI is null"

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->loadBitmap()V

    .line 78
    :goto_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->clearShadowRemovalTasks()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    .line 9
    iput-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/DocRectangleView;->releaseResources()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->releaseResources()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    .line 14
    iput-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    .line 15
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 17
    iget-boolean v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    .line 18
    iget-object v3, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v4, "SEQID"

    invoke-virtual {v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->getSessionSeqId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v2, :cond_1

    .line 19
    iget-object v2, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

    iget-object v3, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    iget-object v4, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v2, v3, v4, v1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V

    .line 20
    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->registerReceiver(Z)V

    .line 25
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final registerReceiver(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.camera3.DOC_EDITOR_ACTION_RECEIVER"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReceiver:Lcom/motorola/camera/editor/DocEditorActivity$3;

    .line 8
    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public final saveDocument()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const-string v1, "_data"

    const/4 v2, 0x0

    .line 2
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MotoCameraUtil"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    move-object v8, v2

    .line 10
    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v10, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/editor/DocEditorActivity$1;

    iget-boolean v7, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsFromCamera:Z

    if-nez v5, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v6

    .line 13
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/editor/DocJpegHolder;ZZLjava/lang/String;Landroid/app/Activity;Lcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method public final showExitDialog()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11014d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11014c

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    const v3, 0x7f110147

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    const v3, 0x7f110148

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 11
    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final updateAdjustBitmap([F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x8

    new-array v4, v1, [I

    const/4 v7, 0x0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget v3, p1, v2

    float-to-int v3, v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v1, p1

    invoke-static {p1, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    .line 10
    iget v2, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {p0, v3, v5, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    invoke-static {v1}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->getId(I)Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    goto :goto_1

    :cond_1
    aget v1, v0, v2

    aget v3, v0, v4

    .line 17
    invoke-static {p1, v1, v3, v0, v7}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v2, v0, v2

    aget v0, v0, v4

    invoke-virtual {p0, v2, v0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    goto :goto_1

    :cond_2
    aget v1, v0, v2

    aget v3, v0, v4

    .line 21
    invoke-static {p1, v1, v3, v0, v7}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v2, v0, v2

    aget v0, v0, v4

    invoke-virtual {p0, v2, v0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    :goto_1
    return-void
.end method

.method public final updateSaveButtonEnableState()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    .line 2
    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final updateViewForState$enumunboxing$(I)V
    .locals 6

    if-eqz p1, :cond_9

    add-int/lit8 v0, p1, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 9
    invoke-static {v0, v1, v4, v4, v3}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->setupImage(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 18
    iget v3, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v3, v3

    .line 19
    iget v4, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    .line 20
    sget-object v5, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->MONO:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    if-ne v4, v2, :cond_5

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 22
    :cond_5
    sget-object v2, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->ENHANCED:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const/4 v2, 0x3

    if-ne v4, v2, :cond_6

    .line 23
    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    .line 24
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 30
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 32
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 33
    :cond_8
    :goto_4
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    return-void

    :cond_9
    const/4 p0, 0x0

    .line 34
    throw p0
.end method
