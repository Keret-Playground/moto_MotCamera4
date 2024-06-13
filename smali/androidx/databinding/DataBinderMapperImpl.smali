.class public Landroidx/databinding/DataBinderMapperImpl;
.super Landroidx/databinding/MergedDataBinderMapper;
.source "DataBinderMapperImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/motorola/camera/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    const-string v0, "com.motorola.camera3.eqs"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.hiphic"

    .line 4
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.lyriq"

    .line 5
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.miami"

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.milanf"

    .line 7
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.pstar"

    .line 8
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.rhodec"

    .line 9
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.rhodep"

    .line 10
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    return-void
.end method
