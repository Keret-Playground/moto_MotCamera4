.class public final synthetic Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 11

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 p0, 0x2

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 p0, 0x3

    .line 4
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const/4 p0, 0x4

    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    sget-object p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->CREATOR:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    :goto_0
    move-object v9, p0

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 9
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0

    .line 10
    :goto_1
    sget-object p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->EMPTY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 11
    sget-object p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->CREATOR:Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;

    const/16 v1, 0x24

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 14
    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    .line 15
    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 16
    invoke-static {p0, p1, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 17
    new-instance p1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 18
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {p1, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;-><init>(Ljava/util/Map;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
