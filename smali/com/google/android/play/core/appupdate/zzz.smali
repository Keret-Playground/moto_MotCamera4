.class public final Lcom/google/android/play/core/appupdate/zzz;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:Ljava/lang/Object;

.field public zzd:Ljava/lang/Object;

.field public zze:Ljava/lang/Object;

.field public zzf:Ljava/lang/Object;

.field public zzg:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/appupdate/zzz;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzk;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzk;-><init>(Lcom/google/android/play/core/appupdate/zzi;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzz;->zzb:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/play/core/appupdate/zzu;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/appupdate/zzu;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzc:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzz;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    new-instance v1, Lcom/google/android/play/core/appupdate/zzs;

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/appupdate/zzs;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzd:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/play/core/appupdate/internal/zzaf;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzd;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzd;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zze:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzz;->zzd:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzaf;

    new-instance v2, Lcom/google/android/play/core/appupdate/zzh;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/play/core/appupdate/zzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzf:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzj;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzg:Ljava/lang/Object;

    return-void
.end method
