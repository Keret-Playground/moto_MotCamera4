.class public final synthetic Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentViewModel;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    iget v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->f$2:Z

    const-string/jumbo v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    :cond_0
    return-void
.end method
