.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->zzb:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->zza(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->zza:I

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->writeInt(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->zzb:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0, p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;)V

    .line 5
    invoke-static {p1, p2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
