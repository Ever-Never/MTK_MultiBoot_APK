.class public Lcom/adsmogo/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0, p3}, Lcom/adsmogo/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    invoke-direct {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v2, "parseConfigurationString json or countryCode is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseJson is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /n countryCode is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/a/a;->a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/Extra;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    const-string v4, "rations"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/a/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v1

    :goto_2
    const-string v4, "AdsMOGO SDK"

    const-string v5, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v4, v5, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v1

    :goto_3
    const-string v4, "AdsMOGO SDK"

    const-string v5, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v4, v5, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a(Lcom/adsmogo/model/obj/Extra;)V

    invoke-virtual {v0, v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/Extra;
    .locals 4

    new-instance v1, Lcom/adsmogo/model/obj/Extra;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/Extra;-><init>()V

    :try_start_0
    const-string v0, "cycle_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->cycleTime:I

    const-string v0, "location_on"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->locationOn:I

    const-string v0, "transition"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->transition:I

    const-string v0, "improve_click"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->improveClick:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "closead_on"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string v0, "adf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->adFirst:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    :try_start_5
    const-string v0, "sdkver"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    const-string v0, "package"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    :try_start_7
    const-string v0, "background_color_rgb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "red"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Extra;->bgRed:I

    const-string v2, "green"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Extra;->bgGreen:I

    const-string v2, "blue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Extra;->bgBlue:I

    const-string v2, "alpha"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->bgAlpha:I

    const-string v0, "text_color_rgb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "red"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Extra;->fgRed:I

    const-string v2, "green"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Extra;->fgGreen:I

    const-string v2, "blue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adsmogo/model/obj/Extra;->fgBlue:I

    const-string v2, "alpha"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->fgAlpha:I

    :goto_6
    return-object v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Exception in parsing config.extra JSON. This may or may not be fatal."

    invoke-static {v2, v3, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    :try_start_8
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->adFirst:I

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v0, ""

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    :cond_0
    :try_start_9
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const/4 v0, -0x1

    :try_start_a
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    :cond_1
    :try_start_b
    const-string v0, "sdkver"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    :try_start_c
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I

    goto/16 :goto_4

    :catch_6
    move-exception v0

    const-string v0, ""

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_5
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 8

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v2, v0, :cond_0

    :goto_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v3

    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lcom/adsmogo/model/obj/Ration;

    invoke-direct {v5}, Lcom/adsmogo/model/obj/Ration;-><init>()V

    const-string v0, "nid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/adsmogo/model/obj/Ration;->type:I

    const-string v0, "nname"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v0, "weight"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v6, v0

    iput-wide v6, v5, Lcom/adsmogo/model/obj/Ration;->weight:D

    const-string v0, "priority"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/adsmogo/model/obj/Ration;->priority:I

    const-string v0, "testmodel"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v5, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    const-string v0, "key"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "JSONException in parsing config.rations JSON. This may or may not be fatal."

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final a(ID)Landroid/view/animation/Animation;
    .locals 7

    const/16 v6, 0x32

    const/high16 v5, 0x3f80

    const v1, 0x3dcccccd

    const-wide/16 v3, 0x320

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x140

    invoke-static {v1, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x140

    invoke-static {v1, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {v6, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {v6, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/a/a;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
