.class public final Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;
.super Ljava/lang/Object;
.source "MirrorComponent.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->inflateViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Landroidx/appcompat/widget/AppCompatSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->$it:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    .line 4
    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomStartProgress:I

    int-to-float v0, v0

    int-to-float p2, p2

    sub-float/2addr v0, p2

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->$it:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0801e0

    .line 8
    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 9
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0801df

    .line 12
    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 14
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p2, p1

    const/16 p1, 0x64

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    .line 16
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    if-eqz p1, :cond_1

    .line 17
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 18
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "VALUE"

    .line 19
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 p2, 0x0

    const-string v0, "TYPE"

    .line 20
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const-string v1, "ORIENTATION"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CLI_ZOOM_ENABLE"

    .line 22
    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    sget-object p3, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    const-string v0, "CAMERA_TYPE"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p3, "VIDEO_RECORDING"

    .line 24
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 26
    invoke-direct {p3, v0, p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 27
    invoke-interface {p0, p3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomStartProgress:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CLI_ZOOM_ENABLE"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 6
    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 7
    invoke-interface {p1, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$4$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    .line 9
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    return-void
.end method
