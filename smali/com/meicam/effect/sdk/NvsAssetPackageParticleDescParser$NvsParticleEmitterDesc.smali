.class public Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvsParticleEmitterDesc"
.end annotation


# instance fields
.field public m_emitterNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_emitterPlace:I

.field public final synthetic this$0:Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;


# direct methods
.method public constructor <init>(Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->this$0:Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    return-void
.end method
