.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

.field public static final synthetic INSTANCE$1:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

.field public static final synthetic INSTANCE$2:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;->INSTANCE$1:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;->INSTANCE$2:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0

    .line 2
    :pswitch_1
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    if-lt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 5
    :goto_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    const-string p0, "lhs"

    .line 6
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "rhs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    goto :goto_2

    :cond_1
    move p0, v0

    .line 9
    :goto_2
    iget-object p2, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    goto :goto_3

    :cond_2
    move p2, v0

    :goto_3
    mul-int/2addr p0, p2

    .line 11
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    goto :goto_4

    :cond_3
    move p2, v0

    .line 13
    :goto_4
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    :cond_4
    mul-int/2addr p2, v0

    sub-int/2addr p0, p2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
