.class public final Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliAnimationPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCliAnimationPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CliAnimationPresentation.kt\ncom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    if-eqz v1, :cond_2

    .line 5
    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MINI_CLI:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x5a

    .line 6
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    .line 7
    iget v4, v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->videoSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v2, v4, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    int-to-float v0, v0

    .line 8
    iget v2, v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->videoSize:I

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 9
    iget v2, v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->videoSize:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    div-float/2addr v0, v5

    sub-float/2addr v2, v0

    .line 10
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 12
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 13
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 14
    iget-object v2, v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 16
    new-instance v3, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v1}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaPlayer;Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 17
    iput-object v0, v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    const-string/jumbo v1, "prepareStartFuture"

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 20
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
