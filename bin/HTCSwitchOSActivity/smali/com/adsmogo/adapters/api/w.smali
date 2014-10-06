.class final Lcom/adsmogo/adapters/api/w;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/w;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/w;-><init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/w;)Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/w;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/w;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/w;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Lcom/adsmogo/model/obj/Adwo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adapters/api/x;

    invoke-direct {v0, p0}, Lcom/adsmogo/adapters/api/x;-><init>(Lcom/adsmogo/adapters/api/w;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/x;->start()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
