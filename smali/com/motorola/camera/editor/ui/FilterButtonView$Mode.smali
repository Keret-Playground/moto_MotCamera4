.class public final enum Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
.super Ljava/lang/Enum;
.source "FilterButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/ui/FilterButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

.field public static final enum ENHANCED:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

.field public static final enum MONO:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

.field public static final enum ORIGINAL:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

.field public static final mLookUp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mId:I

.field public final mText:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f110150

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->ORIGINAL:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    .line 2
    new-instance v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const-string v4, "MONO"

    const/4 v5, 0x2

    const v6, 0x7f11014e

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->MONO:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    .line 3
    new-instance v4, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    const-string v6, "ENHANCED"

    const/4 v7, 0x3

    const v8, 0x7f11014a

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->ENHANCED:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    new-array v6, v7, [Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->$VALUES:[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    .line 6
    const-class v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    .line 7
    sget-object v2, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    iget v3, v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mId:I

    .line 3
    iput p4, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mText:I

    return-void
.end method

.method public static getId(I)Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->$VALUES:[Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v0}, [Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    return-object v0
.end method
