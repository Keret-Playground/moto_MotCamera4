.class public final Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$ShowZoomLimitToastRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ControlPanelStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowZoomLimitToastRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldDisplayZoomLimitedToast()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const p2, 0x7f11054c

    .line 6
    invoke-static {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker$$ExternalSyntheticOutline0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$ShowZoomLimitToastRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
