.class final Lcom/adsmogo/adapters/api/ab;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ab;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/ab;-><init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ab;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ab;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/adapters/api/X;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ab;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/model/obj/SuizongAD;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/SuizongAD;->sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ab;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/model/obj/SuizongAD;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/SuizongAD;->adid:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/adsmogo/adapters/api/X;->sendShowlog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
