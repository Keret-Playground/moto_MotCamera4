.class public final Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;
.super Ljava/lang/Object;
.source "AutoEnhanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/provider/photos/AutoEnhanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    return-void
.end method
