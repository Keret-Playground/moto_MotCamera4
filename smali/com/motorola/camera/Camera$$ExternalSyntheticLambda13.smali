.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

.field public static final synthetic INSTANCE$1:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;->INSTANCE:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;->INSTANCE$1:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    .line 1
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MemKiller"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    .line 2
    :goto_0
    sget p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->$r8$clinit:I

    .line 3
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "motion_photo_process"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
