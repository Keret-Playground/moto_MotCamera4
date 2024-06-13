.class public final Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
.super Landroidx/transition/PathMotion;
.source "CliOnboardViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;
    }
.end annotation


# instance fields
.field public callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p2, Lcom/motorola/camera/settings/CaptureIntent;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "wiggle_gesture"

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/motorola/camera/settings/CaptureIntent;->hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI_TUTORIAL_JUNO:Z

    if-eqz p2, :cond_1

    .line 8
    :cond_0
    new-instance p2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v0, 0x7f0800c3

    const v1, 0x7f1101cf

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p2, 0x2

    new-array v0, p2, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    .line 10
    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v2, 0x7f0800b5

    const v3, 0x7f1102cb

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 11
    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f0800bf

    const v4, 0x7f1102cc

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI_TUTORIAL_JUNO:Z

    if-eqz v0, :cond_2

    new-array p2, p2, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    .line 14
    new-instance v0, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v1, 0x7f0800b3

    const v4, 0x7f1102cd

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    aput-object v0, p2, v2

    .line 15
    new-instance v0, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v1, 0x7f0800b4

    const v2, 0x7f1102ca

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    aput-object v0, p2, v3

    .line 16
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;->showOnboard(Ljava/util/List;)V

    :cond_3
    return-void
.end method
