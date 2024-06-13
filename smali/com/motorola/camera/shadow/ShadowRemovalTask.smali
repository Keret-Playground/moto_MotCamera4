.class public final Lcom/motorola/camera/shadow/ShadowRemovalTask;
.super Landroid/os/AsyncTask;
.source "ShadowRemovalTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final mKey:I

.field public mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/shadow/ShadowRemovalTask;

    return-void
.end method

.method public constructor <init>(ILcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mKey:I

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Lcom/motorola/camera/shadow/ShadowRemoval;

    invoke-direct {v1}, Lcom/motorola/camera/shadow/ShadowRemoval;-><init>()V

    .line 3
    iget-boolean v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    aget-object v0, v0, v3

    goto/16 :goto_b

    .line 5
    :cond_0
    aget-object v0, v0, v3

    if-eqz v2, :cond_11

    if-eqz v0, :cond_10

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    .line 10
    invoke-static {v0, v2, v3, v3, v3}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v7, 0x400

    const/16 v8, 0x600

    .line 14
    invoke-static {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    const/16 v15, 0x180

    const/16 v14, 0x100

    .line 15
    invoke-static {v0, v14, v15, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    iget-object v9, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    iget-object v9, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/high16 v9, 0x180000

    new-array v13, v9, [I

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    const/16 v20, 0x600

    move-object/from16 v9, v17

    move-object v10, v13

    move-object/from16 v21, v13

    move/from16 v13, v16

    move v4, v14

    move/from16 v14, v18

    move v3, v15

    move/from16 v15, v19

    move/from16 v16, v20

    .line 18
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/high16 v11, 0x437f0000    # 255.0f

    if-ge v9, v7, :cond_4

    move v12, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_3

    .line 19
    aget v13, v21, v12

    shr-int/lit8 v13, v13, 0x10

    and-int/lit16 v13, v13, 0xff

    .line 20
    iget-object v14, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    int-to-float v13, v13

    div-float/2addr v13, v11

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 21
    aget v13, v21, v12

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 22
    iget-object v14, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    int-to-float v13, v13

    div-float/2addr v13, v11

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 23
    aget v13, v21, v12

    and-int/lit16 v13, v13, 0xff

    .line 24
    iget-object v14, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    int-to-float v13, v13

    div-float/2addr v13, v11

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_0

    :cond_4
    const v9, 0x18000

    new-array v9, v9, [I

    const/16 v20, 0x0

    const/16 v21, 0x100

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x100

    const/16 v25, 0x180

    move-object/from16 v18, v0

    move-object/from16 v19, v9

    .line 25
    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v10, v3, :cond_6

    move v13, v12

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v4, :cond_5

    .line 26
    aget v14, v9, v13

    shr-int/lit8 v14, v14, 0x10

    and-int/lit16 v14, v14, 0xff

    .line 27
    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    int-to-float v14, v14

    div-float/2addr v14, v11

    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 28
    aget v14, v9, v13

    shr-int/lit8 v14, v14, 0x8

    and-int/lit16 v14, v14, 0xff

    .line 29
    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    int-to-float v14, v14

    div-float/2addr v14, v11

    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 30
    aget v14, v9, v13

    and-int/lit16 v14, v14, 0xff

    .line 31
    iget-object v15, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    int-to-float v14, v14

    div-float/2addr v14, v11

    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move v12, v13

    goto :goto_2

    .line 32
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    iget-object v0, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    iget-object v3, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInputsShadow:[Ljava/lang/Object;

    iget-object v4, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Lorg/tensorflow/lite/InterpreterImpl;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 36
    iget-object v0, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[F

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/high16 v3, 0x600000

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_4
    const/16 v10, 0x5ff

    const/4 v12, 0x1

    if-gt v4, v10, :cond_e

    move v10, v9

    const/4 v9, 0x0

    :goto_5
    const/16 v13, 0x3ff

    if-gt v9, v13, :cond_d

    const/4 v13, 0x0

    .line 38
    aget-object v14, v0, v13

    aget-object v14, v14, v4

    aget-object v14, v14, v9

    aget v14, v14, v13

    const/4 v15, 0x0

    cmpg-float v16, v14, v15

    if-gez v16, :cond_7

    move v14, v15

    :cond_7
    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v17, v14, v16

    if-lez v17, :cond_8

    move/from16 v14, v16

    .line 39
    :cond_8
    aget-object v17, v0, v13

    aget-object v13, v17, v4

    aget-object v13, v13, v9

    aget v13, v13, v12

    cmpg-float v17, v13, v15

    if-gez v17, :cond_9

    move v13, v15

    :cond_9
    cmpl-float v17, v13, v16

    if-lez v17, :cond_a

    move/from16 v13, v16

    :cond_a
    const/16 v17, 0x0

    .line 40
    aget-object v18, v0, v17

    aget-object v17, v18, v4

    aget-object v17, v17, v9

    const/16 v18, 0x2

    aget v17, v17, v18

    cmpg-float v18, v17, v15

    if-gez v18, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v15, v17

    :goto_6
    cmpl-float v17, v15, v16

    if-lez v17, :cond_c

    goto :goto_7

    :cond_c
    move/from16 v16, v15

    :goto_7
    add-int/lit8 v15, v10, 0x1

    mul-float/2addr v14, v11

    float-to-int v14, v14

    int-to-byte v14, v14

    .line 41
    aput-byte v14, v3, v10

    add-int/lit8 v10, v15, 0x1

    mul-float/2addr v13, v11

    float-to-int v13, v13

    int-to-byte v13, v13

    .line 42
    aput-byte v13, v3, v15

    add-int/lit8 v13, v10, 0x1

    mul-float v14, v16, v11

    float-to-int v14, v14

    int-to-byte v14, v14

    .line 43
    aput-byte v14, v3, v10

    add-int/lit8 v10, v13, 0x1

    const/4 v14, -0x1

    .line 44
    aput-byte v14, v3, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move v9, v10

    goto :goto_4

    .line 45
    :cond_e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v3, 0x0

    .line 47
    invoke-static {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_f

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 50
    invoke-static {v4, v0, v3, v3, v12}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 51
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object v0, v4

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v0, 0x0

    .line 52
    :cond_11
    :goto_9
    iget-boolean v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    if-nez v2, :cond_12

    goto :goto_b

    .line 53
    :cond_12
    iget-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    if-eqz v2, :cond_13

    .line 54
    invoke-virtual {v2}, Lorg/tensorflow/lite/InterpreterImpl;->close()V

    const/4 v2, 0x0

    .line 55
    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mTfliteShadow:Lorg/tensorflow/lite/Interpreter;

    goto :goto_a

    :cond_13
    const/4 v2, 0x0

    .line 56
    :goto_a
    iget-object v3, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    if-eqz v3, :cond_14

    .line 57
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 58
    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mOutputsShadow:Ljava/util/HashMap;

    .line 59
    :cond_14
    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMaxImgData:Ljava/nio/ByteBuffer;

    .line 60
    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mMinImgData:Ljava/nio/ByteBuffer;

    .line 61
    iput-object v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInputsShadow:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, v1, Lcom/motorola/camera/shadow/ShadowRemoval;->mInitialized:Z

    :goto_b
    return-object v0
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mKey:I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 5
    iget-object v3, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, v2, p1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;

    :goto_0
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mKey:I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 4
    iget-object v3, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalTaskMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, v2, p1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;

    :goto_0
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/shadow/ShadowRemovalTask;->mShadowRemovalListener:Lcom/motorola/camera/shadow/ShadowRemovalTask$ShadowRemovalListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
