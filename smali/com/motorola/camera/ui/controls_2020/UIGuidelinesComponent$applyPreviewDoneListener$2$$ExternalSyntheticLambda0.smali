.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$applyPreviewDoneListener$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$applyPreviewDoneListener$2$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$applyPreviewDoneListener$2$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    const-string/jumbo p2, "this$0"

    .line 1
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Collection;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda14;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
