.class final Lcom/adsmogo/adview/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private synthetic b:Lcom/adsmogo/adview/ShowFullScreenDialog;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;I)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adview/x;->b:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsmogo/adview/x;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/adsmogo/adview/x;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/adsmogo/adview/x;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/adsmogo/adview/x;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/adsmogo/adview/x;->b:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->closeDialog()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/adsmogo/adview/x;->b:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->b(Lcom/adsmogo/adview/ShowFullScreenDialog;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
