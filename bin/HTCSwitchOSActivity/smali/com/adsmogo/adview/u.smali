.class final Lcom/adsmogo/adview/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/util/n;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullDialog;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullDialog;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/u;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iput-object p2, p0, Lcom/adsmogo/adview/u;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/adsmogo/adview/u;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adview/u;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/u;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adsmogo/adview/u;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/u;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/u;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/u;->a:Lcom/adsmogo/adview/ShowFullDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullDialog;->closeDialog()V

    iget-object v0, p0, Lcom/adsmogo/adview/u;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
