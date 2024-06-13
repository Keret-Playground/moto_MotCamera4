.class public final Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;
.super Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;
.source "LevelerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/LevelerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 2
    iget v2, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    if-ne p1, v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 4
    iget-boolean v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsCamAlignedSensor:Z

    if-eqz v3, :cond_2

    rsub-int p1, p1, 0x168

    .line 5
    iget-boolean v1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsDisplayRotation:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr p1, v1

    .line 6
    rem-int/lit16 p1, p1, 0x168

    .line 7
    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_3

    .line 9
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sub-int p1, v1, p1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 11
    iput p1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    .line 12
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v3, :cond_c

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 15
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    .line 16
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    :cond_4
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0xb4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 19
    :cond_5
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v4, v1

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    .line 22
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    add-int/lit16 v3, v1, -0xb4

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/16 v4, 0x2d

    if-le v3, v4, :cond_6

    rsub-int v3, v3, 0x168

    .line 24
    iput v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    .line 25
    :cond_6
    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_7

    const/4 v2, 0x1

    .line 26
    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-eqz v4, :cond_8

    int-to-float p1, v1

    goto :goto_2

    :cond_8
    neg-int p1, p1

    int-to-float p1, p1

    :goto_2
    invoke-virtual {v3, p1}, Landroid/view/View;->setRotation(F)V

    .line 27
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-ne v2, p1, :cond_9

    goto :goto_4

    .line 28
    :cond_9
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    .line 29
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    goto :goto_3

    :cond_a
    move v1, v0

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    :cond_b
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_c
    :goto_4
    return-void
.end method
