.class final Lcom/adsmogo/adview/i;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
