.class final Lcom/adsmogo/adview/m;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/o;

    invoke-virtual {v0, p2}, Lcom/adsmogo/adview/o;->a(I)V

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->f(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoWebView;->g(Lcom/adsmogo/adview/AdsMogoWebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-boolean v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->h(Lcom/adsmogo/adview/AdsMogoWebView;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->e(Lcom/adsmogo/adview/AdsMogoWebView;)V

    iget-object v0, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->f(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/m;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoWebView;->g(Lcom/adsmogo/adview/AdsMogoWebView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
