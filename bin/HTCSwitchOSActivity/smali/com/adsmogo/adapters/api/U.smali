.class final Lcom/adsmogo/adapters/api/U;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/U;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/U;-><init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/U;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/U;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Smaato click error adMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
