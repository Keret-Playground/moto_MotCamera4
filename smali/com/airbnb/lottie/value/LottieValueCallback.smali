.class public final Lcom/airbnb/lottie/value/LottieValueCallback;
.super Ljava/lang/Object;
.source "LottieValueCallback.java"


# instance fields
.field public animation:Ljava/lang/Object;

.field public frameInfo:Ljava/lang/Object;

.field public value:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValueInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 2
    iput-object p1, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    .line 3
    iput-object p2, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-object p0
.end method
