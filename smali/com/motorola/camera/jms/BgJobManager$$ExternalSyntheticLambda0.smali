.class public final synthetic Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;
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

    iput p3, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_0

    :cond_1
    const-string v1, "BgJobManager"

    const-string v2, "Found a pending job, but it has no mMediaData"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    invoke-static {}, Lcom/motorola/camera/jms/BgJobManager;->notifyQueueEmpty()V

    :cond_3
    return-void

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$state"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v1, :cond_4

    goto/16 :goto_9

    .line 14
    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v4, 0x0

    .line 15
    iput-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_2
    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_6

    const v5, 0x7f0a0465

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_7

    const v5, 0x7f0a0462

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_3

    :cond_7
    move-object v1, v4

    :goto_3
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    .line 20
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_8

    const v5, 0x7f0a0467

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_4

    :cond_8
    move-object v1, v4

    :goto_4
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_9

    const v5, 0x7f0a001b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_5

    :cond_9
    move-object v1, v4

    :goto_5
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    .line 22
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_a

    const v5, 0x7f0a0349

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_6

    :cond_a
    move-object v1, v4

    :goto_6
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    .line 23
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_b

    const v5, 0x7f0a0466

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_7

    :cond_b
    move-object v1, v4

    :goto_7
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    .line 24
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_c

    const v5, 0x7f0a046a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_8

    :cond_c
    move-object v1, v4

    :goto_8
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    .line 25
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_d

    const v4, 0x7f0a0468

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    :cond_d
    iput-object v4, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    .line 26
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v1, :cond_e

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_e
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    if-eqz v1, :cond_f

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_f
    :goto_9
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    .line 29
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3c

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3b

    const/4 v6, 0x3

    if-eq v1, v6, :cond_10

    goto/16 :goto_1e

    .line 30
    :cond_10
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    const/16 v7, 0x8

    if-eq v1, v2, :cond_35

    if-eq v1, v5, :cond_2e

    if-eq v1, v6, :cond_2d

    const-wide/16 v8, 0x1388

    const v10, 0x7f0800a7

    if-eq v1, v3, :cond_25

    const/4 v5, 0x5

    const-string v11, "UpdatePromptComponent"

    if-eq v1, v5, :cond_1a

    const/16 v5, 0xb

    if-eq v1, v5, :cond_11

    .line 31
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    .line 32
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    .line 33
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appUpdate - unknown state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 35
    :cond_11
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 36
    :cond_12
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 37
    :goto_a
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 38
    :goto_b
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_15

    const v1, 0x7f110159

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :cond_15
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_16

    const v1, 0x7f110572

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    :cond_16
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_c
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_18

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    :cond_18
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :goto_d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 44
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 45
    iput-boolean v2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    .line 46
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3e

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1e

    .line 47
    :cond_1a
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 48
    :goto_e
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_f
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_1d

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 50
    :cond_1d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 51
    iget-boolean p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    if-eqz p0, :cond_1f

    .line 52
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_1e

    const v1, 0x7f1101a4

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1e
    const-string p0, "appUpdate - install failed - "

    .line 53
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 54
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 55
    iget v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 57
    :cond_1f
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_20

    const v1, 0x7f1101a3

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_20
    const-string p0, "appUpdate - download failed - "

    .line 58
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 59
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 60
    iget v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_10
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_21

    const v1, 0x7f110573

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_21
    new-instance p0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v6}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 64
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz v1, :cond_22

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_22
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 66
    invoke-virtual {v1, p0, v8, v9}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    .line 67
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_23

    const v1, 0x7f0800fc

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :cond_23
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_24

    goto :goto_11

    :cond_24
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :goto_11
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    goto/16 :goto_1e

    .line 70
    :cond_25
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_26

    goto :goto_12

    :cond_26
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 71
    :goto_12
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_27

    goto :goto_13

    :cond_27
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 72
    :goto_13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_28

    goto :goto_14

    :cond_28
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_14
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_29

    const v1, 0x7f110574

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_29
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_2a

    const v1, 0x7f110570

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :cond_2a
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_2b

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :cond_2b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 77
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 78
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 79
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_2c

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_2c
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    invoke-virtual {p0, v1, v8, v9}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    .line 82
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 83
    :cond_2d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    .line 84
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 85
    :cond_2e
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_2f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 86
    :cond_2f
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 87
    iput-boolean v4, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    .line 88
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_30

    goto :goto_15

    :cond_30
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 89
    :goto_15
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_31

    goto :goto_16

    :cond_31
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 90
    :goto_16
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_32

    goto :goto_17

    :cond_32
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_17
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 92
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_18

    :cond_33
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 93
    :goto_18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_34

    goto :goto_19

    :cond_34
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 94
    iget-wide v5, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    long-to-int v1, v5

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 96
    :goto_19
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 97
    iget-wide v5, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    new-array v1, v2, [I

    long-to-int v3, v5

    aput v3, v1, v4

    const-string/jumbo v3, "progress"

    .line 98
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 99
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 101
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 102
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3e

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1e

    .line 103
    :cond_35
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_36

    goto :goto_1a

    :cond_36
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 104
    :goto_1a
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_37

    goto :goto_1b

    :cond_37
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 105
    :goto_1b
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_38

    goto :goto_1c

    :cond_38
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :goto_1c
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_1d

    :cond_39
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 107
    :goto_1d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 108
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_3a

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 109
    :cond_3a
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3e

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1e

    .line 110
    :cond_3b
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 111
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 112
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f110137

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 113
    iput v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 114
    invoke-static {v1, p0, v0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_1e

    .line 115
    :cond_3c
    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    .line 116
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    goto :goto_1e

    .line 117
    :cond_3d
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    .line 118
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_3e
    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
