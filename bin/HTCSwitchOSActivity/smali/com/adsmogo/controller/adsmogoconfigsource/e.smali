.class public final Lcom/adsmogo/controller/adsmogoconfigsource/e;
.super Lcom/adsmogo/controller/adsmogoconfigsource/b;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    throw v1

    :catch_2
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 8

    :try_start_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "read Offline File"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigSourceOfflineFile refreshConfig adsMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigSourceOfflineFile refreshConfig activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "No Offline File"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-nez v1, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigSourceOfflineFile refreshConfig configCenter is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".config"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/e;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    if-ne v3, v0, :cond_6

    const-string v0, "cn"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "fullscreen_cn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/adsmogo/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v5, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v5, v5, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v5, v5, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v5, v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;)Z

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_8

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigCallService getConfigData activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    const-string v0, "fullscreen_en"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    const-string v0, "cn"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "banner_cn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_7
    const-string v0, "banner_en"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/adsmogo/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
