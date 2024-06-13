.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "CliTutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MenuSingleTooltip"
.end annotation


# instance fields
.field public mScreenDensity:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    const p1, 0x7f11056a

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    return-void
.end method


# virtual methods
.method public final afterShown()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mDegree:F

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->rotate(F)V

    return-void
.end method

.method public final rotate(F)V
    .locals 14

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mDegree:F

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0299

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x43870000    # 270.0f

    const/4 v10, -0x1

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x43b40000    # 360.0f

    if-eqz v7, :cond_1

    sub-float/2addr v12, p1

    .line 7
    invoke-virtual {p0, v12, v3, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 8
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, v10, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto/16 :goto_6

    :cond_1
    cmpg-float v7, p1, v11

    if-nez v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-eqz v7, :cond_3

    :goto_2
    move v7, v6

    goto :goto_3

    :cond_3
    cmpg-float v7, p1, v9

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_3
    const/16 v13, 0x9

    if-eqz v7, :cond_6

    .line 9
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v7, v1

    div-float/2addr v7, v3

    add-float/2addr v7, v2

    goto :goto_4

    :cond_5
    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v7, v1

    div-float/2addr v7, v3

    sub-float v7, v2, v7

    :goto_4
    int-to-float v2, v0

    div-float v10, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v10, v1

    int-to-float v1, v13

    .line 11
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v10

    sub-float/2addr v12, p1

    .line 12
    invoke-virtual {p0, v12, v7, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 13
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v1, v1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v3, v3

    const/16 v7, 0xa

    int-to-float v7, v7

    iget v10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    mul-float/2addr v7, v10

    add-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_6

    :cond_6
    cmpg-float v0, p1, v8

    if-nez v0, :cond_7

    move v0, v6

    goto :goto_5

    :cond_7
    move v0, v5

    :goto_5
    if-eqz v0, :cond_8

    sub-float/2addr v12, p1

    .line 14
    invoke-virtual {p0, v12, v3, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    if-eqz v2, :cond_8

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 16
    invoke-static {v0, v6}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v13

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    sub-int/2addr v3, v2

    .line 19
    invoke-virtual {p0, v0, v3, v10, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    .line 20
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v4, :cond_a

    move v1, v6

    goto :goto_8

    :cond_a
    move v1, v5

    :goto_8
    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    cmpg-float v1, p1, v11

    if-nez v1, :cond_c

    :goto_9
    move v1, v6

    goto :goto_a

    :cond_c
    move v1, v5

    :goto_a
    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    cmpg-float v1, p1, v9

    if-nez v1, :cond_e

    :goto_b
    move v1, v6

    goto :goto_c

    :cond_e
    move v1, v5

    :goto_c
    const/4 v2, 0x3

    const v3, 0x7f0a0451

    const/16 v4, 0x13

    if-eqz v1, :cond_f

    .line 21
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_d

    :cond_f
    cmpg-float p1, p1, v8

    if-nez p1, :cond_10

    move v5, v6

    :cond_10
    if-eqz v5, :cond_11

    .line 23
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 24
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 25
    :cond_11
    :goto_d
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-nez p1, :cond_12

    goto :goto_e

    :cond_12
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :goto_e
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-eqz p0, :cond_13

    const p1, 0x7f08031d

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public final show()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    .line 5
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/16 v1, 0x9

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    .line 9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    const v0, 0x800035

    :goto_0
    move v3, v0

    .line 11
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v4, v0

    .line 12
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v5, v0

    const/4 v6, 0x6

    const/4 v7, 0x2

    move-object v2, p0

    .line 13
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$enumunboxing$(IIIIILandroid/view/View;)V

    return-void
.end method
