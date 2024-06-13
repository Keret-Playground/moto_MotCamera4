.class public final synthetic Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;
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

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->access$updateAutoDisplayFlashStatus(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Z)V

    return-void

    .line 3
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 4
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFadeDuration()J

    move-result-wide v2

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    .line 24
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    .line 25
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->inflateViewStub()V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    .line 28
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 29
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    .line 31
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    .line 32
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const v1, 0x7f0a006f

    .line 33
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 34
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aperture:Landroidx/lifecycle/MutableLiveData;

    .line 35
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isoGain:Landroidx/lifecycle/MutableLiveData;

    .line 36
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$1;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroid/widget/TextView;

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    const v2, 0x7f0a01e8

    .line 38
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    .line 39
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    .line 40
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$2;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroid/widget/TextView;

    const v1, 0x7f0a01ba

    .line 41
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 42
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->exposureTime:Landroidx/lifecycle/MutableLiveData;

    .line 43
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$3;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$3;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0487

    .line 44
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 45
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    .line 46
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$4;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$4;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0327

    .line 47
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 48
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    .line 49
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$5;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$5;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a01dc

    .line 50
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 51
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    .line 52
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$6;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$6;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a01db

    .line 53
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusDistance:Landroidx/lifecycle/MutableLiveData;

    .line 55
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$7;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$7;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0266

    .line 56
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 57
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lensPosition:Landroidx/lifecycle/MutableLiveData;

    .line 58
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$8;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$8;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0277

    .line 59
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 60
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lux:Landroidx/lifecycle/MutableLiveData;

    .line 61
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$9;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$9;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0278

    .line 62
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 63
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->luxIdx:Landroidx/lifecycle/MutableLiveData;

    .line 64
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$10;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$10;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0086

    .line 65
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbCct:Landroidx/lifecycle/MutableLiveData;

    .line 67
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$11;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$11;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0380

    .line 68
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 69
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneFlicker:Landroidx/lifecycle/MutableLiveData;

    .line 70
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$12;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$12;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0087

    .line 71
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 72
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbDecision:Landroidx/lifecycle/MutableLiveData;

    .line 73
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$13;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$13;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0343

    .line 74
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 75
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->realGain:Landroidx/lifecycle/MutableLiveData;

    .line 76
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$14;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$14;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a041f

    .line 77
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 78
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->thermal:Landroidx/lifecycle/MutableLiveData;

    .line 79
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0060

    .line 80
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 81
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    .line 82
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$16;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$16;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0381

    .line 83
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    .line 85
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$17;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$17;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a00b2

    .line 86
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 87
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    .line 88
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$18;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$18;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0054

    .line 89
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 90
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->activeSensor:Landroidx/lifecycle/MutableLiveData;

    .line 91
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$19;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$19;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a005f

    .line 92
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 93
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->adrcGain:Landroidx/lifecycle/MutableLiveData;

    .line 94
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$20;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$20;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 95
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    .line 96
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    .line 97
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;

    const v2, 0x7f0a0339

    .line 98
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    .line 99
    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->proportionalSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 100
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a045f

    .line 101
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    .line 102
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->uniqueSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 103
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$22;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$22;

    invoke-virtual {p0, v2, v1, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0325

    .line 104
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 105
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewFrameTime:Landroidx/lifecycle/MutableLiveData;

    .line 106
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$23;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$23;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0075

    .line 107
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 108
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

    .line 109
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$24;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$24;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a02b5

    .line 110
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 111
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motDrsdv2:Landroidx/lifecycle/MutableLiveData;

    .line 112
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$25;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$25;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a009f

    .line 113
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 114
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bstDrsd:Landroidx/lifecycle/MutableLiveData;

    .line 115
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$26;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$26;

    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 116
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    .line 117
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;->adjustLayout()V

    .line 119
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
