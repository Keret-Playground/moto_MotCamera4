.class public final synthetic Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "this$0"

    packed-switch v1, :pswitch_data_0

    move-object v9, v6

    goto/16 :goto_13

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 1
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_0
    return-void

    .line 3
    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$Companion;

    .line 4
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    .line 6
    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    .line 7
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    if-nez v0, :cond_9

    const-string v2, "mime"

    .line 9
    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 10
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8

    :cond_1
    move-object v0, v6

    :goto_0
    iput-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v0, Landroid/location/Location;

    .line 16
    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v0, v8

    invoke-virtual {v3, v7, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setupTranscoder: failed to create MediaMuxer"

    .line 17
    invoke-virtual {v1, v3, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 18
    :cond_2
    :goto_1
    :try_start_5
    iget-object v8, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v8, :cond_8

    .line 19
    iget v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v8, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v9, 0x0

    .line 20
    invoke-virtual {v8, v9, v10, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 21
    iget v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v8, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "extractor.getTrackFormat(videoTrack)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 23
    iget v3, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    .line 24
    iget v7, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    div-int v10, v3, v7

    .line 25
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    .line 26
    iget-object v7, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 27
    iget v9, v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    .line 28
    iget v11, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    .line 29
    new-instance v12, Lkotlin/ranges/LongRange;

    iget-wide v13, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionStart:J

    iget-wide v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionEnd:J

    invoke-direct {v12, v13, v14, v4, v5}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 30
    new-instance v13, Lkotlin/ranges/LongRange;

    iget-wide v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimStart:J

    iget-wide v14, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimEnd:J

    invoke-direct {v13, v4, v5, v14, v15}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 31
    iget-object v14, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    .line 32
    iget-object v15, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    move-object v7, v3

    .line 33
    invoke-direct/range {v7 .. v15}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;-><init>(Landroid/media/MediaExtractor;IIILkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V

    .line 34
    new-instance v4, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 35
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const-string/jumbo v7, "video/avc"

    if-nez v5, :cond_3

    move-object v5, v7

    .line 36
    :cond_3
    :try_start_6
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    const-string v8, "createDecoderByType(mime)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 37
    invoke-virtual {v5, v0, v6, v6, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 v8, 0x1

    .line 38
    invoke-direct {v4, v5, v3, v8}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    .line 39
    iput-object v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 40
    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string v8, "height"

    invoke-virtual {v5, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 41
    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    const-string/jumbo v9, "width"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 42
    iput v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    .line 43
    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    const-string/jumbo v10, "stride"

    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v9

    .line 44
    iget-object v10, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 45
    iget v11, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    .line 46
    iget v10, v10, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    .line 47
    invoke-static {v8, v5, v9, v11, v10}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->initFrc(IIIII)Z

    move-result v5

    .line 48
    iget-object v8, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    invoke-interface {v8}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;->onProcessingStarted()V

    if-eqz v5, :cond_7

    .line 49
    new-instance v5, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 50
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v0

    .line 51
    :goto_2
    :try_start_7
    invoke-static {v7}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 52
    invoke-virtual {v1, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->configureEncoderOutputFormat(Lcom/motorola/camera/mediacodec/MediaCodecHelper;)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v7, 0x1

    .line 53
    invoke-virtual {v0, v2, v6, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 54
    :try_start_8
    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;)V

    .line 55
    invoke-direct {v5, v0, v2, v7}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    .line 56
    iput-object v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 57
    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    .line 58
    iget-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    if-eqz v6, :cond_6

    const/4 v0, 0x3

    .line 59
    iput v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    const/4 v4, 0x1

    goto :goto_3

    .line 60
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not able to start video encoder"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 61
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "setupVideoEncoder: unable to create encoder"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 62
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not able to init lib"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    const-string/jumbo v2, "setupTranscoder failed"

    .line 63
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8
    const/4 v4, 0x0

    .line 64
    :goto_3
    iput v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    :cond_9
    return-void

    .line 65
    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    .line 66
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    .line 68
    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->UXDUMP:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 70
    :cond_a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 72
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 73
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_ROTATION:Ljava/lang/String;

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    const-string v7, "0"

    invoke-interface {v1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->EXTRA_NODE_RESOURCE:Ljava/lang/String;

    invoke-interface {v1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    const-string v7, ""

    invoke-interface {v1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-interface {v1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    const-string v14, "false"

    invoke-interface {v1, v6, v5, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    new-instance v5, Lcom/motorola/camera/utility/UxBounds;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v8, v8

    invoke-direct {v5, v2, v2, v9, v8}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 84
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .line 85
    iput v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    const/4 v8, 0x1

    .line 86
    iput v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 87
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 88
    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.CameraPreview"

    .line 89
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 90
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 91
    invoke-virtual {v0, v8, v1, v5, v9}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 92
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 94
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    const-string v8, "mTextureManager.allComponents"

    .line 95
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v5}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_27

    const-string v15, "item.value"

    const-string v13, "item.key"

    const/4 v10, 0x2

    if-eq v9, v10, :cond_22

    const/16 v11, 0x12

    if-eq v9, v11, :cond_21

    const/16 v11, 0x15

    if-eq v9, v11, :cond_12

    const/16 v10, 0x21

    if-eq v9, v10, :cond_27

    const/16 v10, 0x19

    if-eq v9, v10, :cond_11

    const/16 v10, 0x1a

    if-eq v9, v10, :cond_b

    goto/16 :goto_d

    .line 98
    :cond_b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 99
    iget v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 100
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 101
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->isVisible()Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_d

    .line 102
    :cond_c
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    .line 103
    invoke-virtual {v0, v9, v1, v8, v12}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 104
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v9, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iget-boolean v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_e

    const-string v10, "mode_slider_menu_button"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_d
    move-object v9, v6

    :cond_e
    :goto_5
    const-string v8, "modeSlider.childs"

    .line 107
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 109
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/mlkit/vision/barcode/internal/zzg;

    move-result-object v9

    .line 110
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    .line 111
    iget-object v9, v9, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v11, v9, Landroid/graphics/RectF;->left:F

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10, v11, v9, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 112
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v11, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 113
    invoke-virtual {v11, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 114
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v8

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v18, v17, 0x1

    move-object v8, v0

    move-object/from16 v19, v11

    move-object v11, v1

    move-object/from16 v20, v12

    move/from16 v12, v17

    move-object v2, v13

    move-object/from16 v13, v19

    invoke-virtual/range {v8 .. v13}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 115
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v17, v18

    goto :goto_7

    :cond_f
    move-object/from16 v20, v12

    move-object v2, v13

    :goto_7
    move-object v13, v2

    move-object/from16 v12, v20

    const/4 v2, 0x0

    goto :goto_6

    .line 116
    :cond_10
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_d

    :cond_11
    move-object v2, v13

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    goto/16 :goto_f

    :cond_12
    move-object v2, v13

    .line 117
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 118
    iget v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 119
    const-class v9, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v11, v12}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ZoomComponent"

    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    .line 120
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 121
    iget-object v12, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    iget-object v12, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    iget v13, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    add-int/lit8 v10, v13, 0x1

    iput v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    iget-object v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    const-string v12, "Zoom_slider"

    invoke-interface {v1, v6, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    iget-object v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    iget-object v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v6, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    iget-object v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v6, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    iget-object v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-interface {v1, v6, v10, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    iget-object v10, v11, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v12, 0x4

    .line 129
    invoke-virtual {v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    .line 130
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v10, v12}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v10

    .line 131
    new-instance v12, Lcom/motorola/camera/utility/UxBounds;

    iget v13, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v3

    sub-float/2addr v13, v6

    .line 132
    iget v6, v10, Landroid/graphics/PointF;->y:F

    move-object/from16 v17, v5

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v3

    sub-float/2addr v6, v5

    .line 133
    iget v5, v10, Landroid/graphics/PointF;->x:F

    move-object/from16 v18, v4

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v3

    add-float/2addr v4, v5

    .line 134
    iget v5, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v10, v3

    add-float/2addr v10, v5

    .line 135
    invoke-direct {v12, v13, v6, v4, v10}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 136
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_13
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    .line 138
    :goto_8
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v4

    const-string v5, "Zoom_button"

    if-eqz v4, :cond_1c

    .line 139
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 147
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v6

    .line 148
    new-instance v10, Lcom/motorola/camera/utility/UxBounds;

    iget v12, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v3

    sub-float/2addr v12, v13

    .line 149
    iget v13, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v19, v14

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float/2addr v14, v3

    sub-float/2addr v13, v14

    .line 150
    iget v14, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v20, v9

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v3

    add-float/2addr v9, v14

    .line 151
    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float/2addr v14, v3

    add-float/2addr v14, v6

    .line 152
    invoke-direct {v10, v12, v13, v9, v14}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 153
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v1, v10, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v11, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v10, :cond_14

    iget-boolean v12, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_14

    const-string/jumbo v12, "zoom_toggle_tele"

    .line 157
    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_14
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_15

    iget-boolean v12, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_15

    const-string/jumbo v12, "zoom_toggle_wide"

    .line 159
    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_15
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v10, :cond_16

    iget-boolean v12, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_16

    const-string/jumbo v12, "zoom_toggle_uwide"

    .line 161
    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_16
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v10, :cond_17

    iget-boolean v12, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_17

    const-string/jumbo v12, "zoom_toggle_macro"

    .line 163
    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_17
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v6, :cond_19

    iget-boolean v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_19

    const-string/jumbo v10, "zoom_toggle_close_up"

    .line 165
    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_18
    const/4 v9, 0x0

    :cond_19
    :goto_9
    const-string/jumbo v6, "zoomComponent.childs"

    .line 166
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    :cond_1a
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 168
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    .line 169
    iget v13, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v14, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 170
    iget v3, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v13, v3

    .line 171
    iget v3, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v14, v3

    .line 172
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v21, v4

    .line 173
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    move-object/from16 v22, v6

    const/4 v6, 0x0

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 181
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 182
    iget v6, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 183
    invoke-virtual {v4, v3, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v3, 0x2

    new-array v6, v3, [F

    const/4 v9, 0x0

    aput v13, v6, v9

    const/4 v13, 0x1

    aput v14, v6, v13

    new-array v14, v3, [F

    .line 184
    invoke-virtual {v4, v14, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 185
    new-instance v4, Landroid/graphics/PointF;

    aget v6, v14, v9

    aget v9, v14, v13

    invoke-direct {v4, v6, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 186
    new-instance v6, Lcom/motorola/camera/utility/UxBounds;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v9, v13

    .line 187
    iget v13, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v14

    sub-float/2addr v13, v3

    .line 188
    iget v3, v4, Landroid/graphics/PointF;->x:F

    move/from16 v23, v12

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v14

    add-float/2addr v12, v3

    .line 189
    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v14

    add-float/2addr v4, v3

    .line 190
    invoke-direct {v6, v9, v13, v12, v4}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 191
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v21

    move-object/from16 v6, v22

    move/from16 v9, v23

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_a

    :cond_1b
    const/4 v6, 0x0

    .line 193
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    :cond_1c
    move-object/from16 v20, v9

    move-object/from16 v19, v14

    .line 194
    :goto_b
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v2, :cond_1d

    .line 195
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    goto :goto_c

    :cond_1d
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_1e

    .line 196
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    move-object/from16 v4, v19

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 204
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v2

    .line 205
    new-instance v3, Lcom/motorola/camera/utility/UxBounds;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 206
    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v8

    sub-float/2addr v6, v9

    .line 207
    iget v9, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    .line 208
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v8

    add-float/2addr v9, v2

    .line 209
    invoke-direct {v3, v5, v6, v10, v9}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 210
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v9, v5

    goto/16 :goto_12

    :cond_1e
    move-object/from16 v4, v19

    goto :goto_e

    :cond_1f
    :goto_d
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object v4, v14

    :cond_20
    :goto_e
    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_21
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object v4, v14

    move-object v9, v6

    goto/16 :goto_12

    :cond_22
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object v2, v13

    :goto_f
    move-object v4, v14

    .line 212
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 213
    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 214
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 215
    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeMenuComponent"

    .line 216
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 217
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    .line 218
    invoke-virtual {v0, v5, v1, v3, v6}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 219
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 221
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 222
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    .line 223
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const-string v10, "mode_%d"

    .line 224
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 225
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    :cond_24
    const-string v3, "modeMenus.childs"

    .line 226
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v12, 0x0

    :cond_25
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 228
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/mlkit/vision/barcode/internal/zzg;

    move-result-object v8

    .line 229
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 230
    iget-object v8, v8, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 231
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v13, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 232
    invoke-virtual {v13, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 233
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v5

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v5, v12, 0x1

    move-object v8, v0

    move-object v11, v1

    invoke-virtual/range {v8 .. v13}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 234
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v5

    goto :goto_11

    :cond_26
    const/4 v9, 0x0

    .line 235
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    :cond_27
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object v9, v6

    move-object v4, v14

    :goto_12
    move-object v14, v4

    move-object v6, v9

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_28
    move-object/from16 v18, v4

    move-object v9, v6

    .line 236
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    invoke-interface {v1, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 239
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    .line 240
    iput-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    return-void

    .line 241
    :goto_13
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$Companion;

    .line 242
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;

    if-eqz v0, :cond_2d

    .line 244
    new-instance v1, Landroid/graphics/RectF;

    .line 245
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 246
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 247
    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 248
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v2

    .line 249
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 250
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 251
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 252
    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v2, v3

    .line 253
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 254
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_29

    .line 255
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_14

    :cond_29
    move-object v6, v9

    :goto_14
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    const/16 v2, 0x30

    float-to-int v1, v1

    const v3, 0x7f060355

    .line 256
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2a

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 257
    :cond_2a
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentText:Landroid/widget/TextView;

    if-nez v3, :cond_2b

    goto :goto_15

    :cond_2b
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    :goto_15
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentText:Landroid/widget/TextView;

    if-eqz v3, :cond_2c

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 259
    :cond_2c
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 260
    :cond_2d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
