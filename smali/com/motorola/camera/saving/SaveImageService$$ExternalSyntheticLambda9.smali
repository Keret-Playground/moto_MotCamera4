.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

.field public final synthetic f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$0:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iput-boolean p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$4:Z

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$5:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$0:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$1:I

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-boolean v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$4:Z

    iget-object v6, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda9;->f$5:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 1
    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-string v8, "SaveImageService"

    int-to-float v0, v2

    const/4 v9, 0x1

    .line 2
    invoke-static {v1, v0, v9, v9, v9}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v11

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v12

    .line 5
    move-object v0, v3

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-nez v11, :cond_1

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v14

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v10, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 7
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    iget-wide v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-wide/from16 v16, v9

    move-object v10, v14

    move-object v9, v14

    move-wide/from16 v14, v16

    .line 8
    :try_start_1
    invoke-static/range {v10 .. v15}, Lcom/motorola/camera/service/WatermarkEditorService;->addWatermarkToBitmap(Landroid/graphics/Bitmap;ZZZJ)Z

    .line 9
    :goto_1
    iget-object v10, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_2

    .line 10
    :try_start_2
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_c

    .line 11
    :cond_2
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :goto_2
    move-object v15, v11

    .line 12
    :try_start_4
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v9, v11, v12, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 13
    iget-object v11, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v11, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 14
    invoke-interface {v11}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v11

    if-eqz v0, :cond_6

    if-eqz v11, :cond_6

    .line 15
    move-object v0, v15

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-static {v0, v12}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->autoEnhance(Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 20
    new-instance v13, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v13}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 21
    new-instance v14, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    move/from16 v16, v2

    .line 22
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-direct {v14, v4, v4, v4, v2}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 23
    invoke-virtual {v13, v14}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 24
    invoke-static {v0, v13}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_3

    :cond_3
    move/from16 v16, v2

    move-object/from16 v17, v4

    :goto_3
    move-object v2, v0

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceDebugKeepFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 27
    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v11, v0}, Lcom/motorola/camera/saving/SaveImageService;->duplicateMediaFile(Lcom/motorola/camera/storage/SharedMediaFile;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v4

    .line 29
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 30
    :try_start_5
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 31
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 32
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 33
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v14, v0

    .line 34
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v13, v0

    :try_start_9
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catch_1
    move-exception v0

    :try_start_a
    const-string v13, "Failed to copy the mediaFile with error: "

    .line 35
    invoke-static {v8, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->delete()V

    .line 37
    :cond_4
    :goto_5
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    if-eqz v2, :cond_5

    .line 38
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 39
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 40
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 41
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/motorola/camera/storage/SharedMediaFile;->setFileName(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 42
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_e
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2

    :cond_5
    const-string v0, "Enhance failed, saving original Dual Capture"

    .line 43
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 45
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 46
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v0

    .line 47
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4

    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v4

    :goto_8
    if-nez v11, :cond_9

    const-string v0, "MediaFile is null"

    .line 48
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-eqz v1, :cond_7

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_8
    invoke-static {v15}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v6, :cond_12

    .line 52
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_d

    .line 53
    :cond_9
    :try_start_13
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 54
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "w"

    .line 55
    invoke-static {v0, v2}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 57
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v4

    .line 58
    invoke-static {v2, v3, v4, v5}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V

    .line 59
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 60
    :cond_a
    invoke-interface {v11}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    .line 61
    invoke-interface {v11}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    .line 62
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 63
    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v0, v2}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 65
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v21

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 66
    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v22

    iget-wide v10, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    .line 68
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    .line 69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move/from16 v30, v2

    goto :goto_9

    :cond_b
    move/from16 v30, v16

    :goto_9
    const/16 v31, 0x0

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object/from16 v18, v0

    move-wide/from16 v19, v4

    move-wide/from16 v24, v10

    .line 70
    invoke-direct/range {v18 .. v31}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 71
    iget-object v4, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v5, "SEQ_ID"

    invoke-virtual {v4, v5, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 73
    iget-object v2, v0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v4, "IS_PRIMARY"

    const/4 v5, 0x1

    .line 74
    invoke-virtual {v2, v4, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 76
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    move-object/from16 v4, v17

    invoke-virtual {v2, v4}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 77
    :cond_c
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-eqz v1, :cond_d

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    :cond_d
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_e
    invoke-static {v15}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v6, :cond_12

    .line 81
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_d

    .line 82
    :cond_f
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bitmap compress failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :catch_2
    move-exception v0

    goto :goto_c

    :catchall_7
    move-exception v0

    const/4 v4, 0x0

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v9, v14

    move-object v4, v15

    :goto_a
    move-object v15, v4

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v9, v14

    move-object v4, v15

    :goto_b
    move-object v15, v4

    .line 83
    :goto_c
    :try_start_15
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v1, :cond_10

    .line 85
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    if-eqz v9, :cond_11

    .line 86
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    :cond_11
    invoke-static {v15}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v6, :cond_12

    .line 88
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_d
    invoke-virtual {v6, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_12
    return-void

    :catchall_9
    move-exception v0

    :goto_e
    if-eqz v1, :cond_13

    .line 89
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    if-eqz v9, :cond_14

    .line 90
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_14
    invoke-static {v15}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v6, :cond_15

    .line 92
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 93
    :cond_15
    throw v0
.end method
