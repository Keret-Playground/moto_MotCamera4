.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 1
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
