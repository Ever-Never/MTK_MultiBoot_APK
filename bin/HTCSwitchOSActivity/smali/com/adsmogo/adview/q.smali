.class final Lcom/adsmogo/adview/q;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullDialog;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/q;->a:Lcom/adsmogo/adview/ShowFullDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/q;->a:Lcom/adsmogo/adview/ShowFullDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullDialog;->closeDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/q;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/q;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e7f\u544a\u5269\u4f59"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
