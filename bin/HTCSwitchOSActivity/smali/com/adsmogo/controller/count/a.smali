.class public final Lcom/adsmogo/controller/count/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public static a(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 11

    const-string v0, "AdsMOGO SDK"

    const-string v1, "countClick start"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "countClick context is null,can not count click"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "http://imp."

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iget v6, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b()Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x9

    new-array v9, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v9, v2

    const/4 v2, 0x1

    const/16 v10, 0x12b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x2

    aput-object v5, v9, v2

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x4

    aput-object v7, v9, v2

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x6

    aput-object v8, v9, v2

    const/4 v10, 0x7

    iget-object v2, p1, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_2
    aput-object v2, v9, v10

    const/16 v2, 0x8

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Q8tFVImbNuvsmBwWwdqsPE6jsRQsSPkQ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "c"

    invoke-virtual {v7, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v3}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v3, v2, v7}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    const-string v3, "AdsMOGO SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "countClick finish code-->"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    if-eqz v0, :cond_0

    invoke-static {v2, v0}, Lcom/adsmogo/controller/count/a;->a([Ljava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_0
    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_1
    const/4 v1, 0x6

    goto/16 :goto_1

    :cond_2
    iget-object v2, p1, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    aget-object v0, v3, v1

    const-string v5, "[|]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    if-lt v0, v8, :cond_1

    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_3

    if-eqz p3, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getAid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    aget-object v6, v5, v2

    aput-object v6, v0, v7

    aget-object v5, v5, v7

    aput-object v5, v0, v8

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getAdtype()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getCn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v5, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    :goto_1
    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Lcom/adsmogo/controller/count/a;->a([Ljava/lang/Object;Landroid/content/Context;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getAid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    aget-object v6, v5, v2

    aput-object v6, v0, v7

    aget-object v5, v5, v7

    aput-object v5, v0, v8

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getAdtype()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getCn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v5, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_1

    :cond_3
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getAid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    aget-object v6, v5, v2

    aput-object v6, v0, v7

    aget-object v5, v5, v7

    aput-object v5, v0, v8

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getAdtype()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->getCn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v5, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Lcom/adsmogo/controller/count/a;->a([Ljava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_2
.end method

.method private static declared-synchronized a([Ljava/lang/Object;Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/adsmogo/controller/count/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "AdsMOGO SDK"

    const-string v2, "Data Backup"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/adsmogo/controller/count/b;

    invoke-direct {v0}, Lcom/adsmogo/controller/count/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/count/b;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/adsmogo/controller/count/b;->a([Ljava/lang/Object;)J

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "countRIB start"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "countRIB nidAndTypes is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_5
    const-string v3, "http://imp."

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlStat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0xc

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getAid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getCn()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getUuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getAdtype()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getLc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_4
    aput-object v0, v4, v5

    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getDev()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adsmogo/controller/count/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getUv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    invoke-static {v1}, Lcom/adsmogo/controller/count/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getBk()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x9

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getV()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getVr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xb

    invoke-static {p2}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getCn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getAdtype()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getLc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getDev()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getUv()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getVr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getBk()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getV()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Q8tFVImbNuvsmBwWwdqsPE6jsRQsSPkQ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "mogostat"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "countRIB finish code-->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getBk()I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1, p2, v1, v2}, Lcom/adsmogo/controller/count/a;->a(Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getLc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/controller/count/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/adsmogo/controller/count/AdsCount;->getLc()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_8
    invoke-static {p1, p2, v1, v8}, Lcom/adsmogo/controller/count/a;->a(Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method
