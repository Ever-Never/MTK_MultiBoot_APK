.class final Lcom/adsmogo/adapters/api/ag;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/ag;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/WeiQian;->getBeaconsViewUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/adsmogo/adapters/api/af;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {v1, v2, v0}, Lcom/adsmogo/adapters/api/af;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/af;->start()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->d(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/WeiQian;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

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

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/WeiQian;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/WeiQian;->getBeaconsClickUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/adsmogo/adapters/api/af;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {v3, v4, v2}, Lcom/adsmogo/adapters/api/af;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/adsmogo/adapters/api/af;->start()V

    :cond_2
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

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

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/adapters/api/ag;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/WeiQian;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_1
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t call"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "mailto:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Cannot mailto"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "http:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "link"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "sms:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Cannot send a message"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
