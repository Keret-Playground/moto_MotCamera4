.class public final synthetic Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v2, 0x0

    const-string/jumbo v3, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1
    throw v0

    .line 2
    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    const-string v4, "$intent"

    .line 3
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v4, "com.motorola.camera3.EXTRA_CONTENT"

    .line 4
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4, v2, v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_9

    if-eq v4, v3, :cond_9

    .line 7
    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 8
    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    if-eq v4, v3, :cond_5

    if-eq v4, v5, :cond_3

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2

    const/4 v1, 0x4

    if-eq v4, v1, :cond_1

    .line 9
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;

    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v3}, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v3}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    :goto_0
    move-object v2, v0

    move/from16 p0, v4

    goto/16 :goto_2

    :cond_2
    const-string v3, "GLOBAL_UUID"

    const-wide/16 v5, 0x0

    .line 11
    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v9, "THUMB_PATH"

    .line 12
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "URI"

    .line 13
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    const-string v13, "FILE_NAME"

    .line 14
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "FILE_PATH"

    .line 15
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "THUMB_WIDTH"

    move/from16 p0, v4

    .line 16
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v18, v0

    const-string v0, "THUMB_HEIGHT"

    move/from16 v19, v4

    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v20, v0

    const-string v0, "ORIENTATION"

    move/from16 v21, v4

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "DATE_TAKEN"

    move/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    const-wide/16 v4, 0x0

    .line 19
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v24, v2

    const-string v2, "DATE_MODIFIED"

    .line 20
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {v1, v3, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 23
    invoke-virtual {v1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    .line 25
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v22

    .line 26
    invoke-virtual {v1, v15, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v19

    .line 27
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v3, v20

    move/from16 v6, v21

    .line 28
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move/from16 v3, v23

    .line 29
    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    .line 30
    invoke-virtual {v1, v0, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    move-object/from16 v2, v18

    iget-object v3, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;-><init>(Landroid/os/Bundle;Lcom/motorola/camera/cli/CliEventListener;)V

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v2, v0

    move/from16 p0, v4

    const-string v0, "com.motorola.camera3.EXTRA_COUNTDOWN_TIMER"

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "com.motorola.camera3.EXTRA_AUTO_CAPTURE_TYPE"

    .line 34
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    new-instance v4, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 36
    :goto_1
    iget-object v1, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    .line 37
    invoke-direct {v4, v0, v3, v1}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;-><init>(IZLcom/motorola/camera/cli/CliEventListener;)V

    move-object v1, v4

    goto :goto_2

    :cond_5
    move-object v2, v0

    move/from16 p0, v4

    .line 38
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v0}, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    .line 39
    :goto_2
    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v3, "from(context)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->getPresentationContainer()Landroid/widget/FrameLayout;

    move-result-object v3

    const-string/jumbo v4, "presentationContainer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v4, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v4, :cond_6

    .line 42
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->presentationLayoutRes()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    .line 43
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewInflated()V

    .line 44
    :cond_6
    iget v0, v2, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    .line 45
    iput v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    .line 46
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onOrientationChanged()V

    .line 47
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;

    move/from16 v3, p0

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPresentation;I)V

    .line 48
    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    .line 49
    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 52
    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->getPresentationContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 54
    :cond_8
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewAdded()V

    :cond_9
    return-void

    .line 55
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;

    .line 56
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    .line 58
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateUIPause(Z)V

    .line 59
    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 60
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 61
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz v0, :cond_a

    .line 62
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_a

    .line 63
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->startCounter(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
