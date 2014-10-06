.class final Lcom/adsmogo/adapters/api/Q;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/Q;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/Q;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
