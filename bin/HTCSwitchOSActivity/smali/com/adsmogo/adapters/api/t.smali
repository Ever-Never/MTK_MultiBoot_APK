.class final Lcom/adsmogo/adapters/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/t;-><init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/t;)Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Lcom/adsmogo/model/obj/Adwo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adwo fail : adwo is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0, v4, v3}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Lcom/adsmogo/model/obj/Adwo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adwo;->getAdurl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adwo fail : Adurl is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0, v4, v3}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v2, Lcom/adsmogo/adapters/api/w;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-direct {v2, v3, v4}, Lcom/adsmogo/adapters/api/w;-><init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/adsmogo/adapters/api/u;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/u;-><init>(Lcom/adsmogo/adapters/api/t;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method
