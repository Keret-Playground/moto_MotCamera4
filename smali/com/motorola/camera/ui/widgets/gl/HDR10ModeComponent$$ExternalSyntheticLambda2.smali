.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$PixelCopyListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->saveSplashPreview(Landroid/graphics/Bitmap;)V

    return-void
.end method
