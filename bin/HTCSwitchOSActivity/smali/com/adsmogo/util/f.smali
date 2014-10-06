.class public final Lcom/adsmogo/util/f;
.super Ljava/lang/Object;


# static fields
.field private static g:I


# instance fields
.field a:Lcom/adsmogo/adview/AdsMogoLayout;

.field b:Landroid/app/Activity;

.field c:Lcom/adsmogo/model/obj/Extra;

.field d:Lcom/adsmogo/model/obj/Update;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x5265c00

    sput v0, Lcom/adsmogo/util/f;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adsmogo/util/g;

    invoke-direct {v0, p0}, Lcom/adsmogo/util/g;-><init>(Lcom/adsmogo/util/f;)V

    iput-object v0, p0, Lcom/adsmogo/util/f;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/adsmogo/util/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/util/f;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/adsmogo/util/f;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method static synthetic a(Lcom/adsmogo/util/f;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "parseUpdateJsonString"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget v1, v1, Lcom/adsmogo/model/obj/Update;->versionCode:I

    const-string v2, "verNum"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    const-string v2, "package"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsmogo/model/obj/Update;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    const-string v2, "verNum"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Update;->versionCode:I

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    const-string v2, "des"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsmogo/model/obj/Update;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsmogo/model/obj/Update;->download_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    const-string v2, "verName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsmogo/model/obj/Update;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    const-string v2, "date"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Update;->date:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v1, p0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/obj/Update;->appName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adsmogo/util/f;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update err>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Caught JSONException in parseUpdateJsonString()"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :try_start_3
    const-string v0, "AdsMOGO SDK"

    const-string v1, "not updata"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://cfg."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "udtateing.."

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/util/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/util/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/util/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/util/f;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/util/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget-object v0, p0, Lcom/adsmogo/util/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adsmogo/util/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mogo_update_time"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/adsmogo/util/f;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update space time is>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget-object v0, v0, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsmogo/util/i;

    invoke-direct {v1, p0, v5}, Lcom/adsmogo/util/i;-><init>(Lcom/adsmogo/util/f;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "AdsMOGO SDK"

    const-string v1, "update extra.packageName is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
