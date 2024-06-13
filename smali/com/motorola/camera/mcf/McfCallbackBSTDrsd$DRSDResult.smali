.class public final Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;
.super Ljava/lang/Object;
.source "McfCallbackBSTDrsd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DRSDResult"
.end annotation


# instance fields
.field public evBracket:[D

.field public hdrDetected:Z

.field public isOverexposed:Z

.field public isUnderexposed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [D

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    return-void
.end method
