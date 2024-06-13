.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
.super Ljava/lang/Enum;
.source "ScreenConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenConfig.kt\ncom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,350:1\n1#2:351\n*E\n"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

.field public static final enum SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_IHC_ON:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_IHC_TYPE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_MIRROR_HELP_CLICK:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_MIRROR_HELP_PRESS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PANORAMA_END:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PANORAMA_START:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SLOW_MOTION_FLICKER:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;


# instance fields
.field public mBackgroudRes:I

.field public mContentRes:I

.field public mDescriptionRes:I

.field public mHeaderRes:I

.field public mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

.field public mIsAnimation:Z

.field public mLeftButtonTextRes:I

.field public mRightButtonTextRes:I

.field public mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mTitleIconRes:I

.field public mTitleTextRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 51

    .line 1
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v1, "SCREEN_FIRST_USE"

    const/4 v2, 0x0

    const v3, 0x7f1101e3

    const v4, 0x7f1101c2

    const v5, 0x7f1101ba

    const v6, 0x7f1101bb

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v9, "SCREEN_CONTINUE"

    const/4 v10, 0x1

    const v11, 0x7f1101db

    const v12, 0x7f1101bf

    const v13, 0x7f1101b9

    const v14, 0x7f1101b8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 4
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v16, "SCREEN_MODE_SINGLE_BOKEH"

    const/16 v17, 0x2

    const v18, 0x7f0801f1

    const v19, 0x7f1103ac

    const v20, 0x7f08028c

    const v21, 0x7f1101dc

    const v22, 0x7f1101c9

    move-object v15, v1

    move-object/from16 v23, v2

    .line 5
    invoke-direct/range {v15 .. v23}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 6
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 7
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v24, "SCREEN_MODE_PHOTO_DEPTH"

    const/16 v25, 0x3

    const v26, 0x7f0801f1

    const v27, 0x7f1103ac

    const v28, 0x7f08028c

    const v29, 0x7f1101dc

    const v30, 0x7f1101c9

    move-object/from16 v23, v2

    move-object/from16 v31, v3

    .line 8
    invoke-direct/range {v23 .. v31}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 9
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 10
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "SCREEN_MODE_SELFIE_PORTRAIT"

    const/4 v10, 0x4

    const v11, 0x7f0801f1

    const v12, 0x7f1103ac

    const v13, 0x7f08028d

    const v14, 0x7f1101dc

    const v15, 0x7f1101c9

    move-object v8, v3

    move-object/from16 v16, v4

    .line 11
    invoke-direct/range {v8 .. v16}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 12
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 13
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "SCREEN_MODE_CINEMAGRAPH"

    const/16 v18, 0x5

    const v19, 0x7f0801e1

    const v20, 0x7f11039d

    const v21, 0x7f080284

    const v22, 0x7f080320

    const v23, 0x7f1101d3

    const v24, 0x7f1101be

    const v25, 0x7f1101d2

    const/16 v26, 0x1

    move-object/from16 v16, v4

    move-object/from16 v27, v5

    .line 14
    invoke-direct/range {v16 .. v27}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 15
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 16
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v8, "FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "SCREEN_MODE_SPOT_COLOR_PHOTO"

    const/4 v10, 0x6

    const v11, 0x7f0801fb

    const v12, 0x7f1103b2

    const v13, 0x7f080291

    const v14, 0x7f1101df

    const v15, 0x7f1101cc

    move-object v8, v5

    move-object/from16 v16, v6

    .line 17
    invoke-direct/range {v8 .. v16}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 18
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 19
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v9, "FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "SCREEN_MODE_SPOT_COLOR_VIDEO"

    const/16 v18, 0x7

    const v19, 0x7f0801fb

    const v20, 0x7f1103b3

    const v21, 0x7f080291

    const v22, 0x7f1101df

    const v23, 0x7f1101cd

    move-object/from16 v16, v6

    move-object/from16 v24, v8

    .line 20
    invoke-direct/range {v16 .. v24}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 21
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 22
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v10, "FIRST_TIME_USE_SEGMENTATION_TUTORIAL"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v8, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 24
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 25
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v11, "FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "SCREEN_MODE_HIGH_MP_REMOSAIC"

    const/16 v13, 0x9

    const v14, 0x7f0801f8

    const v15, 0x7f1103a3

    const v16, 0x7f080292

    const v17, 0x7f11028b

    const v18, 0x7f11028a

    move-object v11, v9

    move-object/from16 v19, v10

    .line 26
    invoke-direct/range {v11 .. v19}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 27
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 28
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v11, "FIRST_TIME_USE_MACRO_TUTORIAL"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v20, "SCREEN_MODE_AUTO_MACRO"

    const/16 v21, 0xa

    const v22, 0x7f0801e8

    const v23, 0x7f1103a6

    const v24, 0x7f08027f

    const v25, 0x7f1101d7

    const v26, 0x7f1101bc

    move-object/from16 v19, v10

    move-object/from16 v27, v15

    .line 29
    invoke-direct/range {v19 .. v27}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 30
    new-instance v20, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v12, "SCREEN_MODE_AUTO_MACRO_INCH"

    const/16 v13, 0xb

    const v14, 0x7f0801e8

    const v16, 0x7f1103a6

    const v17, 0x7f08027f

    const v18, 0x7f1101d7

    const v19, 0x7f1101bd

    move-object/from16 v11, v20

    move-object/from16 v21, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v21

    invoke-direct/range {v11 .. v19}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v20, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 31
    new-instance v33, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 32
    sget-object v46, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE_PAGINATED:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 33
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v23, "SCREEN_MODE_SLOW_MOTION"

    const/16 v24, 0xc

    const v25, 0x7f0801fa

    const v26, 0x7f1103b1

    const v27, 0x7f08028e

    const v28, 0x7f1101dd

    const v29, 0x7f1101ca

    const v30, 0x7f1101e4

    move-object/from16 v22, v33

    move-object/from16 v31, v46

    move-object/from16 v32, v11

    .line 34
    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v33, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 35
    new-instance v47, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v35, "SCREEN_MODE_SUPER_SLOW_MOTION"

    const/16 v36, 0xd

    const v37, 0x7f0801fa

    const v38, 0x7f1103b1

    const v39, 0x7f08028f

    const v40, 0x7f1101e0

    const v41, 0x7f1101ce

    const v42, 0x7f1101b7

    const v43, 0x7f1101e4

    move-object/from16 v34, v47

    move-object/from16 v44, v46

    move-object/from16 v45, v11

    invoke-direct/range {v34 .. v45}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v47, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 36
    new-instance v48, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v35, "SCREEN_MODE_SLOW_MOTION_FLICKER"

    const/16 v36, 0xe

    const v39, 0x7f080290

    const v40, 0x7f1101de

    const v41, 0x7f1101cb

    const v43, 0x7f1101d2

    move-object/from16 v34, v48

    invoke-direct/range {v34 .. v45}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v48, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SLOW_MOTION_FLICKER:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 37
    new-instance v49, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v12, "SCREEN_MODE_FIXED_MACRO_INCH"

    const/16 v13, 0xf

    const v15, 0x7f1103a6

    const v16, 0x7f08027f

    const v17, 0x7f1101d7

    const v18, 0x7f1101c4

    move-object/from16 v11, v49

    invoke-direct/range {v11 .. v19}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v49, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 38
    new-instance v50, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v12, "SCREEN_MODE_FIXED_MACRO"

    const/16 v13, 0x10

    const v18, 0x7f1101c3

    move-object/from16 v11, v50

    invoke-direct/range {v11 .. v19}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v50, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 39
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 40
    sget-object v45, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v23, "SCREEN_MODE_IHC_ON"

    const/16 v24, 0x11

    const v25, 0x7f080245

    const v26, 0x7f11037b

    const v27, 0x7f080293

    const v28, 0x7f1101e1

    const v29, 0x7f1101d0

    move-object/from16 v22, v11

    move-object/from16 v32, v45

    .line 41
    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v11, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_IHC_ON:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 42
    new-instance v12, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v35, "SCREEN_MODE_IHC_TYPE"

    const/16 v36, 0x12

    const v37, 0x7f080245

    const v38, 0x7f11037b

    const v39, 0x7f080294

    const v40, 0x7f1101e2

    const v41, 0x7f1101d1

    move-object/from16 v34, v12

    invoke-direct/range {v34 .. v45}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v12, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_IHC_TYPE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 43
    new-instance v13, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 44
    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MIRROR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v15, "FIRST_TIME_USE_MIRROR_MODE"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v15, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    const-string v22, "SCREEN_MODE_MIRROR_HELP_CLICK"

    const/16 v23, 0x13

    const v24, 0x7f080155

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x7f1101d9

    const v28, 0x7f1101c6

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v21, v13

    move-object/from16 v31, v15

    move-object/from16 v32, v14

    .line 46
    invoke-direct/range {v21 .. v32}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 47
    sput-object v13, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_MIRROR_HELP_CLICK:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 48
    new-instance v16, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v22, "SCREEN_MODE_MIRROR_HELP_PRESS"

    const/16 v23, 0x14

    const v24, 0x7f080156

    const v27, 0x7f1101d8

    const v28, 0x7f1101c5

    move-object/from16 v21, v16

    .line 49
    invoke-direct/range {v21 .. v32}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    .line 50
    sput-object v16, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_MIRROR_HELP_PRESS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 51
    new-instance v14, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 52
    sget-object v45, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PANORAMA_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v23, "SCREEN_MODE_PANORAMA_START"

    const/16 v24, 0x15

    const v25, 0x7f0801ec

    const v26, 0x7f1103aa

    const v27, 0x7f08028b

    const v28, 0x7f1101da

    const v29, 0x7f1101c8

    const v30, 0x7f1101e4

    move-object/from16 v22, v14

    move-object/from16 v31, v46

    move-object/from16 v32, v45

    .line 53
    invoke-direct/range {v22 .. v32}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v14, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PANORAMA_START:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 54
    new-instance v15, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const-string v35, "SCREEN_MODE_PANORAMA_END"

    const/16 v36, 0x16

    const v37, 0x7f0801ec

    const v38, 0x7f1103aa

    const v39, 0x7f08028a

    const v40, 0x7f1101da

    const v41, 0x7f1101c7

    move-object/from16 v34, v15

    invoke-direct/range {v34 .. v45}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v15, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PANORAMA_END:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v17, v15

    const/16 v15, 0x17

    new-array v15, v15, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const/16 v18, 0x0

    aput-object v7, v15, v18

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v20, v15, v0

    const/16 v0, 0xc

    aput-object v33, v15, v0

    const/16 v0, 0xd

    aput-object v47, v15, v0

    const/16 v0, 0xe

    aput-object v48, v15, v0

    const/16 v0, 0xf

    aput-object v49, v15, v0

    const/16 v0, 0x10

    aput-object v50, v15, v0

    const/16 v0, 0x11

    aput-object v11, v15, v0

    const/16 v0, 0x12

    aput-object v12, v15, v0

    const/16 v0, 0x13

    aput-object v13, v15, v0

    const/16 v0, 0x14

    aput-object v16, v15, v0

    const/16 v0, 0x15

    aput-object v14, v15, v0

    const/16 v0, 0x16

    aput-object v17, v15, v0

    sput-object v15, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIZ",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SCREEN_MODE_CUTOUT"

    const/16 v1, 0x8

    .line 13
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f0801e2

    .line 14
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const v0, 0x7f11039e

    .line 15
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    const v0, 0x7f080321

    .line 16
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    const v0, 0x7f1101d6

    .line 17
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    const v0, 0x7f1101c1

    .line 18
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const v0, 0x7f1101d2

    .line 20
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 21
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_MODE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 22
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 1
    sget-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f080295

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 46
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 47
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 48
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 49
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    .line 51
    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mLeftButtonTextRes:I

    .line 52
    iput p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 53
    iput-object p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 54
    iput-object p11, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIIZLcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIZ",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string p1, "SCREEN_MODE_CINEMAGRAPH"

    const/4 p2, 0x5

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x7f0801e1

    .line 24
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const p1, 0x7f11039d

    .line 25
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    const p1, 0x7f080284

    .line 26
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mBackgroudRes:I

    const p1, 0x7f080320

    .line 27
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    const p1, 0x7f1101d3

    .line 28
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    const p1, 0x7f1101be

    .line 29
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const p1, 0x7f1101d2

    .line 31
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 32
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_MODE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 33
    iput-object p11, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIILcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object p8, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE_PAGINATED:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 36
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 37
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 38
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 39
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const p1, 0x7f1101e4

    .line 41
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 42
    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 43
    iput-object p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    .line 7
    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    .line 8
    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const p1, 0x7f1101d2

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    .line 11
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_MODE:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 12
    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object v0
.end method
