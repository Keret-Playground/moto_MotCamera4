.class public final synthetic Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;
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

    iput p3, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    sget v1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->$r8$clinit:I

    const-string v1, "$setting"

    .line 3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 5
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
