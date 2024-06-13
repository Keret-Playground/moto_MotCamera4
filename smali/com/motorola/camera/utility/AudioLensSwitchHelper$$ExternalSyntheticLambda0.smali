.class public final synthetic Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onStatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 3
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->onStatus(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
