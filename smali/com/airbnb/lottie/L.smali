.class public final Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/L;

.field public static depthPastMaxDepth:I

.field public static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field public static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/L;

    invoke-direct {v0}, Lcom/airbnb/lottie/L;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/L;->INSTANCE:Lcom/airbnb/lottie/L;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endSection()V
    .locals 1

    .line 1
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    :cond_0
    return-void
.end method
