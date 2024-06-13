.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->$r8$classId:I

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final centerX()F
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    return p0
.end method

.method public final centerY()F
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    return p0
.end method

.method public final contains(FF)Z
    .locals 2

    .line 6
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    check-cast p0, Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final contains(Landroid/graphics/PointF;FFFF)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzg;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    iget p2, p1, Landroid/graphics/PointF;->y:F

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/mlkit/vision/barcode/internal/zzg;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    iget p3, p1, Landroid/graphics/PointF;->y:F

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/mlkit/vision/barcode/internal/zzg;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p4

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/google/mlkit/vision/barcode/internal/zzg;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p5

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/mlkit/vision/barcode/internal/zzg;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final height()F
    .locals 1

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    check-cast p0, Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public final inset(FF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    move-object p1, p0

    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 4
    check-cast p0, Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final offset(FF)V
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public final scale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3
    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    move-object v1, p0

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4
    move-object v0, p0

    check-cast v0, Landroid/graphics/RectF;

    check-cast p0, Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final width()F
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    return p0
.end method
