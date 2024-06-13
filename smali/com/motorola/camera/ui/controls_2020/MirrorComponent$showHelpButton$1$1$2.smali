.class public final Lcom/motorola/camera/ui/controls_2020/MirrorComponent$showHelpButton$1$1$2;
.super Ljava/lang/Object;
.source "MirrorComponent.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$showHelpButton$1$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$showHelpButton$1$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
