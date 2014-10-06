.class final Lcom/adsmogo/adapters/api/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/o;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appsecret"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "get key err"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;ZLandroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    iput-object v3, v2, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "get key err"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0, v5, v6}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method
