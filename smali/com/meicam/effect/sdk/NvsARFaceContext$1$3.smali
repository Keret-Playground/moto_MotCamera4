.class Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/effect/sdk/NvsARFaceContext$1;->notifyFaceItemLoadingFailed(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

.field public final synthetic val$error:I

.field public final synthetic val$itemPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meicam/effect/sdk/NvsARFaceContext$1;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;->this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;->val$itemPath:Ljava/lang/String;

    iput p3, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;->this$1:Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    iget-object v0, v0, Lcom/meicam/effect/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/effect/sdk/NvsARFaceContext;

    iget-object v0, v0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;->val$itemPath:Ljava/lang/String;

    iget p0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext$1$3;->val$error:I

    invoke-interface {v0, v1, p0}, Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;->notifyFaceItemLoadingFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
