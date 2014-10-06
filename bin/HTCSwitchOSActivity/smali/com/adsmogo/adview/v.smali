.class final Lcom/adsmogo/adview/v;
.super Ljava/util/TimerTask;


# instance fields
.field private a:I

.field private synthetic b:Lcom/adsmogo/adview/ShowFullDialog;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/ShowFullDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/v;->b:Lcom/adsmogo/adview/ShowFullDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lcom/adsmogo/adview/v;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/adsmogo/adview/v;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adsmogo/adview/v;->b:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v1, v1, Lcom/adsmogo/adview/ShowFullDialog;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v0, p0, Lcom/adsmogo/adview/v;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/adsmogo/adview/v;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adsmogo/adview/v;->a:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/v;->b:Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v0, v0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
