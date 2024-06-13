.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocJpegHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/app/Activity;

.field public final synthetic f$5:Lcom/motorola/camera/saving/SaveListener;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocJpegHolder;ZZLjava/lang/String;Landroid/app/Activity;Lcom/motorola/camera/saving/SaveListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$1:Z

    iput-boolean p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$2:Z

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$4:Landroid/app/Activity;

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$5:Lcom/motorola/camera/saving/SaveListener;

    const/16 p1, 0x65

    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-boolean v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$1:Z

    iget-boolean v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$2:Z

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$4:Landroid/app/Activity;

    iget-object v6, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$5:Lcom/motorola/camera/saving/SaveListener;

    iget v7, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda10;->f$6:I

    const-string v0, "ImageLength"

    const-string v8, "ImageWidth"

    const-string v9, "SaveImageService"

    .line 1
    iget v10, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    .line 2
    invoke-static {v10}, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->getId(I)Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v13, 0x2

    if-eq v11, v13, :cond_0

    .line 3
    iget-object v11, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v11, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v11, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    .line 6
    :goto_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v15

    invoke-virtual {v11, v14, v15, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8
    invoke-static {v11}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 10
    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 11
    iget-object v15, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_1

    :cond_2
    iget-object v15, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 12
    :goto_1
    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 13
    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 14
    invoke-virtual {v12, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v7

    .line 15
    :try_start_1
    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v12, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 17
    invoke-virtual {v12, v8, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v12, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v0, v0

    const/16 v7, 0x5a

    if-eq v0, v7, :cond_5

    const/16 v7, 0xb4

    if-eq v0, v7, :cond_4

    const/16 v7, 0x10e

    if-eq v0, v7, :cond_3

    const/4 v7, 0x1

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Orientation"

    .line 25
    invoke-virtual {v12, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v11}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    .line 27
    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 28
    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v0, :cond_6

    .line 29
    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    .line 30
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    array-length v8, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :goto_3
    const-string v15, ";"

    if-ge v14, v8, :cond_7

    move/from16 v17, v8

    :try_start_2
    aget v8, v0, v14

    float-to-int v8, v8

    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v17

    goto :goto_3

    .line 34
    :cond_7
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 35
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 36
    invoke-virtual {v12, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 37
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 39
    invoke-virtual {v12, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 40
    invoke-virtual {v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move/from16 v16, v7

    .line 41
    :goto_4
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process failed to write exif of document: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    :goto_5
    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 v7, 0x0

    if-eqz v2, :cond_8

    .line 43
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_7

    .line 44
    :cond_8
    new-instance v8, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v8}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 45
    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v10, "http://ns.google.com/photos/1.0/document/"

    .line 47
    iget-object v12, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v12, :cond_9

    sget-object v12, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 48
    new-instance v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 49
    iput-object v12, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 50
    :cond_9
    iget-object v12, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v12, :cond_a

    sget-object v12, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 51
    new-instance v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 52
    iput-object v12, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 53
    :cond_a
    iget-object v12, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 54
    iget-object v13, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_4
    const-string v14, "Data"

    .line 55
    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 56
    invoke-virtual {v13, v10, v14, v0, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v13, "image/jpeg"

    .line 57
    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 58
    invoke-virtual {v12, v10, v0, v13, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v10, "XmpData"

    const-string v12, "can\'t embed document data"

    .line 59
    invoke-static {v10, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_6
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 61
    iget-object v10, v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 62
    invoke-direct {v0, v10, v7, v7, v7}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v8, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 63
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_7
    if-eqz v3, :cond_b

    if-nez v2, :cond_b

    .line 64
    :try_start_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 65
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 67
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8

    .line 68
    :cond_b
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 73
    :goto_8
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 74
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 75
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v6}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;-><init>(ZLcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save document jpeg fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 78
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v6}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda20;-><init>(ZLcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_9

    :catch_4
    move-exception v0

    .line 79
    instance-of v1, v0, Landroid/app/RecoverableSecurityException;

    if-eqz v1, :cond_c

    .line 80
    check-cast v0, Landroid/app/RecoverableSecurityException;

    .line 81
    invoke-virtual {v0}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v7, v16

    .line 83
    :try_start_6
    invoke-virtual/range {v5 .. v12}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :goto_9
    return-void

    .line 84
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    :goto_a
    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 87
    throw v0
.end method
