.class final Lcom/adsmogo/adview/p;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/o;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/o;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/p;->a:Lcom/adsmogo/adview/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/p;->a:Lcom/adsmogo/adview/o;

    iget v0, v0, Lcom/adsmogo/adview/o;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/p;->a:Lcom/adsmogo/adview/o;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/o;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/p;->a:Lcom/adsmogo/adview/o;

    const/4 v1, 0x0

    iput v1, v0, Lcom/adsmogo/adview/o;->a:I

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
