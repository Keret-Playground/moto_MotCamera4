.class public final synthetic Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(IIIII)Z
    .locals 2

    sget-object p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    const/4 p0, 0x2

    const/16 v0, 0x4d

    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    const/16 v1, 0x4f

    if-ne p3, v1, :cond_0

    if-ne p4, v0, :cond_0

    if-eq p5, v0, :cond_1

    if-eq p1, p0, :cond_1

    :cond_0
    if-ne p2, v0, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 5

    const/4 p0, 0x0

    const/16 v0, 0x24

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/exoplayer2/ThumbRating;->CREATOR:Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/Rating;

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p1, 0x1f

    const-string v1, "Unknown RatingType: "

    .line 5
    invoke-static {p1, v1, v0}, Lbd$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move p0, v3

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 9
    invoke-static {v3}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v4

    if-nez v0, :cond_3

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/StarRating;-><init>(I)V

    goto :goto_0

    .line 12
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/StarRating;-><init>(IF)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {p0}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    move p0, v3

    .line 14
    :cond_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 15
    invoke-static {v3}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float p1, p0, v4

    if-nez p1, :cond_6

    .line 16
    new-instance p0, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>()V

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>(F)V

    :goto_0
    move-object p0, p1

    goto :goto_3

    .line 17
    :cond_7
    invoke-static {p0}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_1

    :cond_8
    move v0, p0

    .line 18
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 19
    invoke-static {v3}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating;

    invoke-static {v2}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/HeartRating;-><init>(Z)V

    :goto_2
    move-object p0, v0

    goto :goto_3

    .line 21
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/HeartRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/HeartRating;-><init>()V

    :goto_3
    return-object p0
.end method
