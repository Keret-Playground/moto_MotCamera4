.class public final synthetic Lay$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(IIII)I
    .locals 0

    mul-int/2addr p0, p1

    .line 5
    div-int/2addr p0, p2

    add-int/2addr p0, p3

    return p0
.end method

.method public static m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .line 4
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
