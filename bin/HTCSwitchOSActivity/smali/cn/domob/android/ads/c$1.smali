.class Lcn/domob/android/ads/c$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->a(Lcn/domob/android/ads/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->b(Lcn/domob/android/ads/c;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/c;->a(Lcn/domob/android/ads/c;Z)Z

    .line 76
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->c(Lcn/domob/android/ads/c;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 65
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/c;->b(Lcn/domob/android/ads/c;Z)Z

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->b(Lcn/domob/android/ads/c;)V

    .line 86
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 90
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    iget-object v0, v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c$a;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/domob/android/ads/c$1;->a:Lcn/domob/android/ads/c;

    iget-object v0, v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c$a;

    check-cast p1, Lcn/domob/android/ads/c;

    .end local p1
    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/c$a;->a(Lcn/domob/android/ads/c;Ljava/lang/String;)V

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
