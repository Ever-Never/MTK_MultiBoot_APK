.class public final Lcom/adsmogo/controller/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v1, ""

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "results"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "address_components"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v8, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v8

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v3, v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "types"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "locality"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v1, "long_name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v7, "administrative_area_level_1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "long_name"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v3, "Caught JSONException in parseCityJsonString()"

    invoke-static {v1, v3, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, ""

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "results"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "address_components"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v8, v0

    move-object v0, v2

    move v2, v8

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "types"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "political"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "short_name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Caught JSONException in parseCityJsonString()"

    invoke-static {v2, v3, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 19

    const-string v1, "AdsMOGO SDK"

    const-string v2, "sendAudiance start"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, v4, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v2

    iget v2, v2, Lcom/adsmogo/model/obj/Extra;->locationOn:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    const-string v3, "location"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    const-string v2, "AdsMOGO SDK"

    const-string v3, "location is null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_3
    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getVersionCode(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->GetCPUInfo()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCityName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_4
    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v18, "http://cfg."

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/Audiance.ashx?aid=%s&uid=%s&vr=%s&pn=%s&uv=%s&uc=%s&nt=%s&mn=%s&os=%s&dn=%s&si=%s%s&ra=%s&cn=%s&lc=%s&ll=%s"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v5, v4, v18

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "1.2.6"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v7, v4, v5

    const/4 v5, 0x4

    aput-object v8, v4, v5

    const/4 v5, 0x5

    aput-object v9, v4, v5

    const/4 v5, 0x6

    aput-object v10, v4, v5

    const/4 v5, 0x7

    aput-object v11, v4, v5

    const/16 v5, 0x8

    aput-object v12, v4, v5

    const/16 v5, 0x9

    aput-object v13, v4, v5

    const/16 v5, 0xa

    aput-object v14, v4, v5

    const/16 v5, 0xb

    aput-object v15, v4, v5

    const/16 v5, 0xc

    aput-object v16, v4, v5

    const/16 v5, 0xd

    aput-object v17, v4, v5

    const/16 v5, 0xe

    aput-object v1, v4, v5

    const/16 v1, 0xf

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v2, v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendAudiance finish status code-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Location success latitudeAndlongitude-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3, v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setLatitudeAndlongitude(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sensor=false&language=zh-cn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v3}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v3, v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "AdsMOGO SDK"

    const-string v3, "adsmogo geocode fail"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {v2}, Lcom/adsmogo/controller/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v5, v5, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setCountryCode(Ljava/lang/String;)V

    :cond_6
    invoke-static {v2}, Lcom/adsmogo/controller/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/controller/a/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3, v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setCityName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCityName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_9
    move-object v2, v3

    goto/16 :goto_2
.end method
