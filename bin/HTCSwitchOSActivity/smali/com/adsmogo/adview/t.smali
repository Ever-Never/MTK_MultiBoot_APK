.class final Lcom/adsmogo/adview/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/util/n;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullDialog;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:I

.field private final synthetic d:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullDialog;Landroid/widget/ImageView;ILcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/t;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iput-object p2, p0, Lcom/adsmogo/adview/t;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/adsmogo/adview/t;->c:I

    iput-object p4, p0, Lcom/adsmogo/adview/t;->d:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/t;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/t;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/t;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adsmogo/adview/t;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/t;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/t;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/adview/v;

    iget-object v2, p0, Lcom/adsmogo/adview/t;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget v3, p0, Lcom/adsmogo/adview/t;->c:I

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/ShowFullDialog;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/t;->d:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/t;->d:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a()V

    :cond_2
    return-void
.end method
