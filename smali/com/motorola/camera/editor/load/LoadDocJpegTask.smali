.class public final Lcom/motorola/camera/editor/load/LoadDocJpegTask;
.super Landroid/os/AsyncTask;
.source "LoadDocJpegTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/editor/DocJpegHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCropUri:Landroid/net/Uri;

.field public final mJpegUri:Landroid/net/Uri;

.field public final mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

.field public final mOrigUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mCropUri:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    new-instance p1, Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mCropUri:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/editor/DocJpegHolder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result v0

    const-string v1, "LoadDocJpegTask"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 6
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    .line 8
    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v5

    iput-object v5, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    if-nez v5, :cond_0

    .line 9
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    .line 11
    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    const/4 v5, 0x0

    if-nez v0, :cond_1

    const-string p1, "load jpeg error:"

    .line 13
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v5

    goto/16 :goto_a

    .line 15
    :cond_1
    new-instance p0, Lcom/motorola/camera/editor/parser/DocDataParser;

    invoke-direct {p0}, Lcom/motorola/camera/editor/parser/DocDataParser;-><init>()V

    .line 16
    new-instance v0, Lcom/motorola/camera/editor/parser/XMPParser;

    invoke-direct {v0}, Lcom/motorola/camera/editor/parser/XMPParser;-><init>()V

    .line 17
    iget-object v6, v0, Lcom/motorola/camera/editor/parser/XMPParser;->attributeParsers:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    .line 19
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    new-instance v5, Lcom/motorola/camera/editor/parser/XMPStream;

    invoke-direct {v5, v7}, Lcom/motorola/camera/editor/parser/XMPStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/parser/XMPParser;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V

    .line 22
    iget-object v6, v5, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 23
    iput v2, v5, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :cond_2
    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    if-eqz v6, :cond_4

    .line 24
    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/parser/XMPParser;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_4
    invoke-static {v7}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v7

    goto :goto_1

    :catch_0
    move-object v5, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    throw p0

    .line 27
    :catch_1
    :goto_2
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/editor/parser/DocDataParser;->mImageData:[B

    if-eqz p0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    if-eqz v0, :cond_6

    .line 29
    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_5

    .line 30
    :cond_6
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    array-length v0, p0

    new-array v0, v0, [B

    .line 31
    array-length v5, p0

    invoke-static {p0, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_5

    .line 33
    :cond_7
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 34
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    .line 36
    invoke-virtual {v0, v5, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 37
    :goto_5
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v0, p0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    .line 40
    invoke-static {p0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 42
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_6

    :cond_8
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 43
    :goto_6
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const-string p0, "Orientation"

    .line 44
    invoke-virtual {v0, p0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v5, 0x6

    const/16 v6, 0x8

    const/4 v7, 0x3

    if-eq p0, v7, :cond_b

    if-eq p0, v5, :cond_a

    if-eq p0, v6, :cond_9

    const/4 p0, 0x0

    goto :goto_7

    :cond_9
    const/high16 p0, 0x43870000    # 270.0f

    goto :goto_7

    :cond_a
    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_7

    :cond_b
    const/high16 p0, 0x43340000    # 180.0f

    .line 45
    :goto_7
    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    new-array p0, v6, [F

    .line 46
    sget-object v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 47
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    const-string v2, ";"

    .line 48
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 49
    array-length v5, v2

    if-lt v5, v6, :cond_d

    :goto_8
    if-ge v3, v6, :cond_d

    .line 50
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    aput v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 51
    :cond_c
    iget v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    div-int/lit8 v8, v6, 0x3

    .line 52
    iget v9, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    div-int/lit8 v10, v9, 0x3

    int-to-float v11, v8

    aput v11, p0, v3

    int-to-float v3, v10

    aput v3, p0, v4

    sub-int/2addr v6, v8

    int-to-float v6, v6

    aput v6, p0, v2

    aput v3, p0, v7

    const/4 v2, 0x4

    aput v6, p0, v2

    const/4 v2, 0x5

    sub-int/2addr v9, v10

    int-to-float v3, v9

    aput v3, p0, v2

    aput v11, p0, v5

    const/4 v2, 0x7

    aput v3, p0, v2

    .line 53
    :cond_d
    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    .line 54
    sget-object p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v2, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->ORIGINAL:Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v0, p0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnIntValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;I)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_e
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :goto_a
    return-object p1
.end method

.method public final bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 5
    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 6
    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateAdjustBitmap([F)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 10
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    .line 11
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v1, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    :cond_2
    :goto_0
    return-void
.end method
