.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DualCaptureLayoutTooltip"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTutorialComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TutorialComponent.kt\ncom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1551:1\n1#2:1552\n*E\n"
.end annotation


# instance fields
.field public final synthetic $$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f110558

    const v5, 0x7f1101e4

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->unregisterLayoutListener()V

    return-void
.end method

.method public final clickControl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/lit8 p0, p0, 0x1

    .line 3
    invoke-static {v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->access$showDualCaptureTooltip(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0435

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->showImpl()V

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip$show$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip$show$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public final showImpl()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070416

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07041a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, v1, v0

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07041e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 11
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07041f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 14
    iget v3, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    sub-float/2addr v3, v1

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v3, v1

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 19
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v1

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 20
    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v1, v5

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 24
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;)Z

    move-result v1

    if-eqz v1, :cond_1

    neg-float v3, v3

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    float-to-int v1, v3

    .line 28
    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    .line 29
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    .line 30
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    goto :goto_1

    :cond_2
    const/16 v1, 0x30

    float-to-int v2, v3

    const/4 v3, 0x3

    .line 31
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show$enumunboxing$(IIII)V

    :goto_1
    return-void
.end method
