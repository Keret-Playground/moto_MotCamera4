.class public Lorg/tensorflow/lite/InterpreterImpl$Options;
.super Lorg/tensorflow/lite/InterpreterApi$Options;
.source "InterpreterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/InterpreterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public useXNNPACK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/tensorflow/lite/InterpreterApi$Options;-><init>()V

    return-void
.end method
