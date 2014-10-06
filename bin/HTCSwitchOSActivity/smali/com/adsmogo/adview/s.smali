.class final Lcom/adsmogo/adview/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullDialog;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/s;->a:Lcom/adsmogo/adview/ShowFullDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/s;->a:Lcom/adsmogo/adview/ShowFullDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullDialog;->closeDialog()V

    iget-object v0, p0, Lcom/adsmogo/adview/s;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/s;->a:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
