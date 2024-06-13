.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;
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

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->$r8$classId:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->$r8$lambda$KzoPaltljrGNlVkkiEMChjNfuD8(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    const-string/jumbo v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    monitor-exit v0

    if-nez v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    throw p0

    .line 12
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->show()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$Companion;

    const-string/jumbo v0, "this$0"

    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->determinateCaptureFinished(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void

    .line 15
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v0

    .line 17
    :try_start_1
    iget-object v4, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->poll()Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    move-result-object v4

    .line 18
    iget-object v5, p0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 19
    iget v7, v5, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mPicSize:I

    .line 20
    iget v5, v5, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mNumPics:I

    .line 21
    invoke-static {v7, v5, v6}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/saving/MemoryListener;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

    .line 23
    iget-object v5, v5, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mListener:Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/MemoryListener;

    if-eqz v5, :cond_3

    .line 25
    invoke-interface {v5}, Lcom/motorola/camera/saving/MemoryListener;->onMemoryAvailable()V

    .line 26
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 27
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsOnlyCaptureRecord:Z

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/SaveImageService;->addProcessingImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    goto/16 :goto_16

    .line 29
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 30
    iget-object v0, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 31
    iget-object v7, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 32
    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 33
    iget-boolean v9, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    if-eqz v9, :cond_5

    goto/16 :goto_16

    .line 34
    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    .line 36
    iget-object v9, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v9, :cond_8

    const/4 v10, -0x1

    const-string v11, "ExposureMode"

    .line 37
    invoke-virtual {v9, v11, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    const-string v10, "Orientation"

    .line 38
    invoke-virtual {v9, v10, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    .line 39
    invoke-static {v10}, Lcom/motorola/camera/utility/ExifUtility;->getOrientationFromExif(I)I

    move-result v10

    iput v10, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 40
    sget-object v10, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    iget-object v11, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 41
    iget-object v10, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v11, "PANO_IMAGE_WIDTH"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 42
    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v7, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    goto :goto_2

    :cond_7
    const-string v7, "ImageWidth"

    .line 43
    invoke-virtual {v9, v7, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const-string v7, "ImageLength"

    .line 44
    invoke-virtual {v9, v7, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 45
    :goto_2
    :try_start_2
    sget-object v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ALTM_ATTEMPTED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 46
    invoke-virtual {v9, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    :catch_0
    :cond_8
    :goto_3
    iget-object v7, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 49
    iget-object v9, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 50
    check-cast v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 51
    iget-object v10, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 52
    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 53
    iget-object v11, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 54
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v10}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->hasSuffix()Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v10, v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_9
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v11, v10}, Lcom/motorola/camera/saving/FileName;->setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;

    .line 57
    iget v10, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    if-ne v10, v2, :cond_a

    const/16 v10, 0x8

    invoke-virtual {v11, v10}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 58
    :cond_a
    iget v10, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I

    if-ne v10, v2, :cond_b

    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 59
    :cond_b
    iget v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 60
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode(I)Z

    move-result v13

    if-nez v13, :cond_e

    if-ne v10, v1, :cond_c

    move v1, v2

    goto :goto_4

    :cond_c
    move v1, v3

    :goto_4
    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    move v1, v3

    goto :goto_6

    :cond_e
    :goto_5
    move v1, v2

    :goto_6
    const/4 v10, 0x2

    const/high16 v13, 0x20000

    if-eqz v1, :cond_11

    .line 61
    invoke-static {v9}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v11, v10}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 62
    :cond_f
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v11, v13}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_10
    const/16 v1, 0x200

    .line 63
    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_7

    .line 64
    :cond_11
    iget-boolean v1, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v1, :cond_12

    invoke-static {v9}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 65
    invoke-virtual {v11, v10}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    const/16 v1, 0x100

    .line 66
    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 67
    :cond_12
    :goto_7
    iget v1, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x2000000

    .line 68
    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 69
    :cond_13
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v10, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v1, v10, :cond_15

    .line 70
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_14

    move v10, v2

    goto :goto_8

    :cond_14
    move v10, v3

    .line 71
    :goto_8
    invoke-static {v1, v10}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_15
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "ALTERNATE_SHOT"

    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 73
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "UUID"

    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "alternate_shot_index_"

    .line 75
    invoke-static {v13}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 76
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_16

    move v13, v2

    goto :goto_9

    :cond_16
    move v13, v3

    .line 77
    :goto_9
    invoke-static {v10, v13}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 79
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 80
    :cond_17
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 81
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 82
    :cond_18
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 83
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 84
    :cond_19
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 85
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 86
    :cond_1a
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 87
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1b
    :goto_a
    iget-object v7, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    .line 89
    invoke-virtual {v11}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v1, v13, v14}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 90
    iput-object v10, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    .line 91
    :cond_1c
    iget-object v1, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 92
    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    goto :goto_b

    .line 93
    :cond_1d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 94
    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    .line 95
    :cond_1e
    :goto_b
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_24

    .line 96
    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/CaptureHolder;

    .line 97
    iget-object v7, v1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v7, :cond_23

    .line 98
    iget-object v7, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 99
    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_BSSCOUNT_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v13, v1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v7, v10, v13}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_1f

    .line 100
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v2, :cond_1f

    const/high16 v7, 0x20000

    .line 101
    invoke-virtual {v11, v7}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 102
    :cond_1f
    iget-object v7, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v10, v1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v13, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-eqz v13, :cond_20

    .line 103
    invoke-virtual {v13, v7, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    goto :goto_c

    :cond_20
    const/4 v7, 0x0

    .line 104
    :goto_c
    sget-object v10, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-virtual {v10, v7}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 105
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 106
    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v10, v9, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_21

    const/16 v9, 0xff

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v9, v1, :cond_21

    move v1, v2

    goto :goto_d

    :cond_21
    move v1, v3

    :goto_d
    if-nez v7, :cond_22

    if-eqz v1, :cond_24

    :cond_22
    const/high16 v1, 0x20000

    .line 108
    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_e

    :cond_23
    const-string v1, "appendSuffix, ignore MFNR check. mResult is null for "

    .line 109
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-object v7, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "SaveImageService"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_24
    :goto_e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 113
    invoke-virtual {v11, v1}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    .line 114
    :cond_25
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 115
    new-instance v1, Lcom/motorola/camera/instrumentreport/CalibrationData;

    invoke-direct {v1}, Lcom/motorola/camera/instrumentreport/CalibrationData;-><init>()V

    .line 116
    iget-object v7, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 117
    iget v7, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v7, :cond_26

    move v7, v2

    goto :goto_f

    :cond_26
    move v7, v3

    .line 118
    :goto_f
    sput-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    .line 119
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v7, :cond_27

    .line 120
    sput-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    .line 121
    sput-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    .line 122
    sput-boolean v2, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 123
    :cond_27
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    if-nez v7, :cond_28

    .line 124
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v7, :cond_29

    .line 125
    :cond_28
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    if-nez v7, :cond_2a

    .line 126
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v7, :cond_2a

    .line 127
    :cond_29
    sput-boolean v2, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 128
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v7, :cond_2b

    .line 129
    iget-object v7, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v7, :cond_2b

    .line 130
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;

    invoke-direct {v10, v1, v7}, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;-><init>(Lcom/motorola/camera/instrumentreport/CalibrationData;Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "calibration"

    .line 131
    invoke-virtual {v9, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_10

    .line 133
    :cond_2a
    sput-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 134
    :cond_2b
    :goto_10
    :try_start_3
    iget-boolean v1, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    if-nez v1, :cond_2c

    iget-boolean v7, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    if-eqz v7, :cond_2d

    .line 135
    :cond_2c
    iget-boolean v7, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    invoke-virtual {p0, v4, v1, v7}, Lcom/motorola/camera/saving/SaveImageService;->addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V

    .line 136
    :cond_2d
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/SaveImageService;->writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    .line 137
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 138
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 139
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    .line 140
    invoke-interface {v1, v4}, Lcom/motorola/camera/saving/SaveListener;->onReviewSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_11

    .line 141
    :cond_2e
    sget-object p0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    .line 142
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eq p0, v1, :cond_2f

    .line 143
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 144
    iget-object p0, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "SAVE_TIME"

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 146
    invoke-virtual {p0, v1, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 147
    :cond_2f
    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    .line 148
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne p0, v1, :cond_33

    .line 149
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result p0

    if-nez p0, :cond_33

    iget-boolean p0, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    if-eqz p0, :cond_33

    .line 150
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz p0, :cond_32

    .line 151
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-nez v1, :cond_30

    goto :goto_13

    .line 152
    :cond_30
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "ALTERNATE_SHOT"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 153
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 154
    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v1

    if-eqz p0, :cond_31

    if-eqz v1, :cond_31

    goto :goto_12

    :cond_31
    move v2, v3

    :goto_12
    move v3, v2

    goto :goto_14

    :cond_32
    :goto_13
    const-string p0, "SaveImageService"

    const-string v1, "Couldn\'t check if was the default alternate shot."

    .line 155
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    if-nez v3, :cond_33

    .line 156
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 157
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 158
    :cond_33
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 159
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq p0, v1, :cond_34

    .line 160
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq p0, v1, :cond_34

    .line 161
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v1, :cond_35

    .line 162
    :cond_34
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 163
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq p0, v0, :cond_35

    .line 164
    iget-object p0, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v0, "ON_UP"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_35

    .line 165
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 166
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 168
    monitor-enter p0

    .line 169
    :try_start_4
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    monitor-exit p0

    goto :goto_15

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_35
    :goto_15
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p0, :cond_37

    .line 172
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 173
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    const-string v0, "End - addImage"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    goto :goto_16

    :catch_1
    move-exception p0

    .line 174
    iget-object v0, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 175
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 176
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_message"

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "task_id"

    .line 179
    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string/jumbo p0, "task_id"

    const-string/jumbo v2, "task_id"

    .line 180
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 181
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    :cond_36
    new-instance p0, Lcom/motorola/camera/CameraData;

    iget-wide v5, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v0, v4, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, v3}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    :cond_37
    :goto_16
    return-void

    :catchall_2
    move-exception p0

    .line 183
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 184
    :goto_17
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    .line 185
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
