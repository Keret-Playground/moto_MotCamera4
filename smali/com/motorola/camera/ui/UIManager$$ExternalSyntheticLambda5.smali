.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->start()V

    return-void
.end method
