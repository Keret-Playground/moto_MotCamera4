.class public final Lcom/google/android/exoplayer2/ThumbRating;
.super Lcom/google/android/exoplayer2/Rating;
.source "ThumbRating.java"


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/ThumbRating;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isThumbsUp:Z

.field public final rated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/ThumbRating;->CREATOR:Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    return-void
.end method

.method public static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/exoplayer2/ThumbRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/exoplayer2/ThumbRating;

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ThumbRating;->rated:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
