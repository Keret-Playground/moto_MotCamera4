.class public final synthetic Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;

.field public static final synthetic INSTANCE$1:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->INSTANCE$1:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
