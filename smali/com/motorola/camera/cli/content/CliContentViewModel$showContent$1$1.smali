.class public final Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliContentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/content/Context;",
        "Lcom/motorola/camera/cli/CliEventListener;",
        "Lcom/motorola/camera/arch/view/BasePresentation<",
        "Lcom/motorola/camera/cli/content/CliContentViewModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $orientation:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliContentViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->$orientation:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lcom/motorola/camera/cli/CliEventListener;

    const-string p1, "context"

    .line 2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventListener"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    .line 4
    iget-object p2, p2, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "<get-cliDisplay>(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Landroid/view/Display;

    .line 5
    iget v3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->$orientation:I

    .line 6
    new-instance v5, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1$presentation$1;

    iget-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-direct {v5, p2}, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1$presentation$1;-><init>(Lcom/motorola/camera/cli/content/CliContentViewModel;)V

    move-object v0, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;ILcom/motorola/camera/cli/CliEventListener;Lkotlin/jvm/functions/Function0;)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    return-object p1
.end method
