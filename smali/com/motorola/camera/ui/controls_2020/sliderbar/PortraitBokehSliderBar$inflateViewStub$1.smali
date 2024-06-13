.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$inflateViewStub$1;
.super Ljava/lang/Object;
.source "PortraitBokehSliderBar.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->inflateViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onBokehLevelChanged(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onBokehLevelStopChanged()V

    :cond_0
    return-void
.end method
