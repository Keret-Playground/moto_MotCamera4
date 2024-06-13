.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocEditorActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/editor/DocEditorActivity;

    iput-boolean p2, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/editor/DocEditorActivity;

    iget-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Bitmap;

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessTextView:Landroid/widget/TextView;

    const v3, 0x7f110285

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mBackButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateSaveButtonEnableState()V

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v2, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object p0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    const/4 p0, 0x2

    .line 11
    invoke-virtual {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    :cond_1
    :goto_0
    return-void
.end method
