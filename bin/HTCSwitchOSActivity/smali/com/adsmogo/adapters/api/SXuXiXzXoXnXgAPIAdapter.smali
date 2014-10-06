.class public Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static c:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private a:Lcom/adsmogo/model/obj/SuizongAD;

.field private b:D

.field private d:D

.field private e:D

.field private g:Ljava/lang/String;

.field private h:Lcom/adsmogo/adview/AdsMogoLayout;

.field private i:Lcom/adsmogo/adapters/api/aa;

.field private j:Landroid/webkit/WebView;

.field private k:Landroid/app/Activity;

.field private l:Lcom/adsmogo/adapters/api/X;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, ""

    sput-object v0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->f:Ljava/lang/String;

    const-string v0, "SuiZong API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2743

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "02e310a99f1640b53e88e9e408295a94"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->g:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Create SuizongAPIAdapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/adapters/api/X;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->l:Lcom/adsmogo/adapters/api/X;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4

    const-string v0, "adid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    const-string v0, "sid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v2, v0

    :goto_1
    const-string v0, "updatetime"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/encryption/SHA1;->SHA(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    const-string v0, "adid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "sid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    :cond_2
    const-string v0, "updatetime"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    if-eqz v0, :cond_2

    :try_start_0
    const-string v1, "http://sapi.suizong.com/libra-node-ads-frontend/union/webapi/get"

    sget-object v0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->c:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/adsmogo/adapters/api/aa;

    const/16 v2, 0x140

    invoke-direct {v0, p0, v2}, Lcom/adsmogo/adapters/api/aa;-><init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;I)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->i:Lcom/adsmogo/adapters/api/aa;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appkey"

    invoke-static {p2}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uuid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v3, "android"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ip"

    sget-object v3, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os_ver"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "density"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v0

    const-string v3, "aw"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->i:Lcom/adsmogo/adapters/api/aa;

    invoke-virtual {v4}, Lcom/adsmogo/adapters/api/aa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ah"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->i:Lcom/adsmogo/adapters/api/aa;

    invoke-virtual {v4}, Lcom/adsmogo/adapters/api/aa;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    const-string v3, "pw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "sdk_ver"

    const-string v3, "MONGO_1.2.6"

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "net"

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pcheck"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/encryption/MD5;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "icheck"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imei"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operator"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-le v3, v6, :cond_1

    const-string v3, "lon"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lat"

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v1, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->f:Ljava/lang/String;

    const-string v0, "request"

    invoke-direct {p0, v3, v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "suizong reauest status is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v0, v0, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Suizong Fail : request status not is 0"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const-string v0, "pw"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ph"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    const-string v0, "0"

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "adid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/SuizongAD;->adid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/SuizongAD;->sid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "updatetime"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/SuizongAD;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/encryption/MD5;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pcheck"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "icheck"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->f:Ljava/lang/String;

    const-string v0, "getbody"

    invoke-direct {p0, v2, v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;ZLandroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    sget-object v3, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->f:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v3, "Content-type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_e

    const-string v2, "request"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "status"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v3, v2

    if-lez v3, :cond_c

    iget-object v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Adid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->adid:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Updatetime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->updateTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response err :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    const-string v1, "1"

    iput-object v1, v0, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Width"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->awidth:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Height"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->aheight:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Refresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->refreshTime:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Price_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->priceType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Price"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->price:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/adsmogo/model/obj/SuizongAD;->sid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v0, "Msg"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/SuizongAD;->msg:Ljava/lang/String;

    :cond_b
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "suizong status != 0 msg->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/SuizongAD;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "AdsMOGO SDK"

    const-string v1, "retunt not status "

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    const-string v1, "1"

    iput-object v1, v0, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v0, "getbody"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/obj/SuizongAD;->data:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "response Code is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    const-string v1, "1"

    iput-object v1, v0, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v0, v0, Lcom/adsmogo/model/obj/SuizongAD;->aheight:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->d:D

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v0, v0, Lcom/adsmogo/model/obj/SuizongAD;->awidth:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x30

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->d:D

    const/16 v0, 0x140

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e:D

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x33

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->d:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/model/obj/SuizongAD;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 13

    const-string v0, "appkey"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "uuid"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "client"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ip"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "os_ver"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "density"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "aw"

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ah"

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "pw"

    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "ph"

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "sdk_ver"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "net"

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/encryption/SHA1;->SHA(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Serving SuizongAD type: banner"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    new-instance v0, Lcom/adsmogo/adapters/api/X;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1, v2}, Lcom/adsmogo/adapters/api/X;-><init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->l:Lcom/adsmogo/adapters/api/X;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/ab;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adsmogo/adapters/api/ab;-><init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    const-string v1, "http://sapi.suizong.com/libra-node-ads-frontend/union/webapi/getbody"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/SuizongAD;->data:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->l:Lcom/adsmogo/adapters/api/X;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->l:Lcom/adsmogo/adapters/api/X;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/X;->destroy()V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->l:Lcom/adsmogo/adapters/api/X;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "SuizongAD Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public handle()V
    .locals 5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Suizong handle"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "handle  adMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "handle  activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->startTimer(I)V

    new-instance v0, Lcom/adsmogo/model/obj/SuizongAD;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/SuizongAD;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a:Lcom/adsmogo/model/obj/SuizongAD;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b:D

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/W;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/adsmogo/adapters/api/W;-><init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public requestTimeOut()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "suizong SDK time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->j:Landroid/webkit/WebView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method
