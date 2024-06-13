.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

.field public static final synthetic INSTANCE$1:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->INSTANCE$1:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$NoI5kRW8wAUxmof6zipOuDt0Yf4()V

    return-void

    :goto_0
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
