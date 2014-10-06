.class final Lcom/adsmogo/adview/n;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/n;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/n;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->j(Lcom/adsmogo/adview/AdsMogoWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/n;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoWebView;->b(Lcom/adsmogo/adview/AdsMogoWebView;Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adsmogo/adview/n;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->i(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/n;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoWebView;->g(Lcom/adsmogo/adview/AdsMogoWebView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adsmogo/adview/n;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v1, p2}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Lcom/adsmogo/adview/AdsMogoWebView;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
