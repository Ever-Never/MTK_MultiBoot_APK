.class public Lcom/adsmogo/adapters/api/PublicCustomAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field public a:Lcom/adsmogo/adview/AdsMogoLayout;

.field private b:Landroid/app/Activity;

.field private c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/adsmogo/model/obj/PublicCustom;

.field private f:D

.field private g:D

.field private h:D

.field private i:Lcom/adsmogo/adview/ShowFullScreenDialog;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start public custom Api Adapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "JSONException in parsing image JSON. This may or may not be fatal."

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Lcom/adsmogo/model/obj/PublicCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/adsmogo/model/obj/PublicCustom;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x2

    new-instance v2, Lcom/adsmogo/model/obj/PublicCustom;

    invoke-direct {v2}, Lcom/adsmogo/model/obj/PublicCustom;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ad_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    const-string v3, "cid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    const-string v3, "img_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    const-string v3, "img_url1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink1:Ljava/lang/String;

    const-string v3, "ad_size"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->ad_size:Ljava/lang/String;

    const-string v3, "AppIcon"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "AppName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    const-string v3, "redirect_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    const-string v3, "AppDes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->appDes:Ljava/lang/String;

    const-string v3, "ad_text"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    const-string v3, "link_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    const-string v3, "launch_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->launchType:I

    const-string v3, "AppImage"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    const-string v3, "al"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->al:I

    const-string v3, "pn"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    iget-object v4, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adsmogo/util/RepeatCheck;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v2, "this app is installed"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-object v1, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    const-string v0, ""

    iget v1, v2, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-ne v1, v8, :cond_2

    const-string v0, "&download=1"

    :cond_2
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iput-object v0, v1, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    :cond_3
    move-object v0, v2

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "76x76"

    const-string v4, "38x38"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parsePublicCustomJson Exception or not have ads "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "76x76"

    const-string v4, "38x38"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v3, "img_url1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "img_url1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    :cond_4
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "76x76"

    const-string v4, "60x60"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_1

    iget-object v5, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "104x156"

    const-string v7, "208x312"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->al:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start CountService"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    const-class v2, Lcom/adsmogo/controller/service/CountService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "country"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adtype"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actype"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "secondDomain"

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v1}, Lcom/adsmogo/adview/ShowFullScreenDialog;->closeDialog()V

    iput-object v9, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->ad_size:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_1
    new-instance v0, Lcom/adsmogo/adview/ShowFullScreenDialog;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink1:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/adview/ShowFullScreenDialog;-><init>(Landroid/app/Activity;Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showMogoFullAdDialog()V

    goto :goto_0

    :cond_2
    const-string v1, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Unknown custom type!"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: image"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "image  imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'320\' height=\'50\' src=\'%s\'></img></a>"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v3, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "mogoHtml"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mogoHtml is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: icon"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon adText is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_6

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon extra is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icon extra is null:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/adsmogo/model/obj/Extra;->bgRed:I

    invoke-static {v4}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/adsmogo/model/obj/Extra;->bgGreen:I

    invoke-static {v4}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/adsmogo/model/obj/Extra;->bgBlue:I

    invoke-static {v4}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/adsmogo/model/obj/Extra;->fgRed:I

    invoke-static {v6}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/adsmogo/model/obj/Extra;->fgGreen:I

    invoke-static {v6}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/adsmogo/model/obj/Extra;->fgBlue:I

    invoke-static {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon fgColor or bgColor is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><div style=\'width:320px;height:50px;background-color:%s\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" style=\'width:44px;height:44px;float:left;padding-bottom:3; padding-left:3; padding-right:6; padding-top:3;\' src=\'%s\'></img> <table width=\"267\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" ><tr height=\"50\"><td height=\"50\"align=\"left\" style=\"color:%s\">%s</td></tr></table></div></a>"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v3, v6, v0

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    aput-object v2, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Serving custom type: html"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "AdsMOGO SDK"

    const-string v1, "html adText is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: gif"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "AdsMOGO SDK"

    const-string v1, "gif imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'320\' height=\'50\' src=\'%s\'></img></a>"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v3, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adapters/api/N;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/N;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    move v5, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/adsmogo/model/obj/PublicCustom;
    .locals 12

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const-string v1, "1"

    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCityName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x2d

    if-ne p2, v1, :cond_5

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlExchange:Ljava/lang/String;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v2, v9, v3

    const/4 v2, 0x2

    aput-object v4, v9, v2

    const/4 v2, 0x3

    aput-object v5, v9, v2

    const/4 v2, 0x4

    aput-object v6, v9, v2

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&area="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&ll="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&mac="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://cus."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1b

    if-ne p2, v0, :cond_3

    const-string v0, "c"

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "AdsMOGO SDK"

    const-string v1, "PublicCustom jsonString is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string v1, "6"

    move-object v2, v1

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_6

    sget-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlMogo:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v1, v9

    const/4 v9, 0x1

    aput-object p1, v1, v9

    const/4 v9, 0x2

    aput-object v2, v1, v9

    const/4 v9, 0x3

    aput-object v4, v1, v9

    const/4 v9, 0x4

    aput-object v5, v1, v9

    const/4 v9, 0x5

    aput-object v6, v1, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Q8tFVImbNuvsmBwWwdqsPE6jsRQsSPkQ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x30

    if-ne p2, v1, :cond_7

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium:Ljava/lang/String;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object p1, v9, v3

    const/4 v3, 0x2

    aput-object v5, v9, v3

    const/4 v3, 0x3

    aput-object v2, v9, v3

    const/4 v2, 0x4

    aput-object v4, v9, v2

    const/4 v2, 0x5

    aput-object v6, v9, v2

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0x36

    if-ne p2, v1, :cond_8

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlRecommend:Ljava/lang/String;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object p1, v9, v3

    const/4 v3, 0x2

    aput-object v5, v9, v3

    const/4 v3, 0x3

    aput-object v2, v9, v3

    const/4 v2, 0x4

    aput-object v4, v9, v2

    const/4 v2, 0x5

    aput-object v6, v9, v2

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_8
    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v6, v9

    const/4 v3, 0x1

    aput-object p1, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object v2, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPublicCustom err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    :try_start_3
    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Ljava/lang/String;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "AdsMOGO SDK"

    const-string v1, "PublicCustom entity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Caught ClientProtocolException in getAd()"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Caught IOException in getAd()"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adsmogo/util/RepeatCheck;->isAppRepeated(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/Q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/Q;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    const-string v3, "javaScriptInterface"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/K;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/K;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final a(ZLandroid/view/ViewGroup;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x80

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:Lcom/adsmogo/adview/ShowFullScreenDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/ShowFullScreenDialog;->setFullAdIsLoadFinish(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    if-nez v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "RIBAdcount is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v1}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    iput-object v5, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-interface {v0, v5, v1}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "sendCountClick finish"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-eq v1, v2, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-ne v0, v10, :cond_1

    :try_start_0
    sput-object p0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onclick open activity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->launchType:I

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-boolean v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u4e0b\u8f7d\u5417?"

    const-string v1, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/adapters/api/L;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/L;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/adapters/api/M;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/M;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    const-string v3, "Message"

    const-string v2, "Are you sure you want to download?"

    const-string v1, "OK"

    const-string v0, "Cancel"

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->downloadAPK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(I)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_8

    :goto_2
    new-instance v0, Lcom/adsmogo/adview/ShowInfoDialog;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v5, v5, Lcom/adsmogo/model/obj/PublicCustom;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v6, v6, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    iget-object v7, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v7, v7, Lcom/adsmogo/model/obj/PublicCustom;->appDes:Ljava/lang/String;

    iget-object v8, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v8, v8, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    iget-object v9, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v9, v9, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/adsmogo/adview/ShowInfoDialog;-><init>(ILjava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowInfoDialog;->show()V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(I)V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v10, :cond_a

    move v10, v0

    goto :goto_2

    :cond_9
    const-string v0, "AdsMOGO SDK"

    const-string v1, "In onInterceptTouchEvent(), but custom.link is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v10, v0

    goto :goto_2
.end method

.method public clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Ad Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public handle()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->startTimer(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:D

    const/16 v0, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:D

    invoke-static {v0, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:D

    const/16 v0, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:D

    invoke-static {v0, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v2, Lcom/adsmogo/adapters/api/O;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/O;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;B)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public onPageComplete()V
    .locals 2

    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onPageComplete()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    return-void
.end method

.method public requestTimeOut()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "html img load time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method
