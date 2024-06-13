.class public final Landroidx/preference/R$drawable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static final CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

.field public static final LIST_EMPTY:Lkotlinx/coroutines/internal/Symbol;

.field public static final synthetic zza:Landroidx/preference/R$drawable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/preference/R$drawable;

    invoke-direct {v0}, Landroidx/preference/R$drawable;-><init>()V

    sput-object v0, Landroidx/preference/R$drawable;->zza:Landroidx/preference/R$drawable;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/preference/R$drawable;->CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/preference/R$drawable;->LIST_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    return p0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method
