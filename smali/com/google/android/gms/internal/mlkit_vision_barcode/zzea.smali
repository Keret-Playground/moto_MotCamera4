.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;

.field public final zzb:Ljava/lang/Integer;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;

    .line 3
    iget-object v0, p1, Lcom/airbnb/lottie/value/LottieValueCallback;->animation:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;->zzb:Ljava/lang/Integer;

    .line 5
    iget-object p1, p1, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;

    return-void
.end method
