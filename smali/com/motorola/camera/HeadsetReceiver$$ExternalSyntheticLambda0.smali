.class public final synthetic Lcom/motorola/camera/HeadsetReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/HeadsetReceiver;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/HeadsetReceiver;Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/HeadsetReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/HeadsetReceiver;

    iput-object p2, p0, Lcom/motorola/camera/HeadsetReceiver$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/HeadsetReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/HeadsetReceiver;

    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->HEADSET_PLUG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 5
    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
