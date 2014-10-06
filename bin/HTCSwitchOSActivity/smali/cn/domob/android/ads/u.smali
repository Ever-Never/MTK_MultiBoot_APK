.class Lcn/domob/android/ads/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "pb[update]"

.field static final b:Ljava/lang/String; = "domob_update_info"

.field static final c:Ljava/lang/String; = "ipb"

.field static final d:Ljava/lang/String; = "info_md5"

.field static final e:Ljava/lang/String; = "n"

.field static final f:Ljava/lang/String; = "nt"

.field static final g:Ljava/lang/String; = "vc"

.field static final h:Ljava/lang/String; = "vn"

.field static final i:Ljava/lang/String; = "u"

.field static final j:Ljava/lang/String; = "s"

.field static final k:Ljava/lang/String; = "md5"

.field static final l:Ljava/lang/String; = "ul"

.field static final m:Ljava/lang/String; = "f"

.field static final n:Ljava/lang/String; = "sk"

.field static final o:Ljava/lang/String; = "nrt"

.field static final p:Ljava/lang/String; = "nri"

.field static final q:Ljava/lang/String; = "next_time"

.field static final r:Ljava/lang/String; = "skip_vc"

.field private static s:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/u;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method protected static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v1, Lcn/domob/android/ads/u;

    invoke-direct {v1}, Lcn/domob/android/ads/u;-><init>()V

    .line 45
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/u;->b(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x1

    .line 52
    :goto_0
    sget-object v1, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraInfo parse and update/non-update result return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 53
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    sget-object v2, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/StringBuilder;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    const-string v2, "info_md5"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/domob/android/ads/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    if-eqz v2, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    const-string v2, "info_md5"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const/4 v0, 0x1

    .line 159
    :cond_1
    :goto_0
    return v0

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 64
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const-string v2, "domob_update_info"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 70
    monitor-enter v2

    .line 72
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 73
    const-string v4, "ipb"

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    const-string v4, "pb[update]"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    const-string v4, "n"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string v5, "nt"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 80
    const-string v6, "vc"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    const-string v7, "vn"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    const-string v8, "u"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    const-string v9, "s"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 84
    const-string v10, "md5"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 85
    const-string v11, "ul"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 86
    const-string v12, "f"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 87
    const-string v13, "sk"

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 88
    const-string v14, "nrt"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 90
    const-string v15, "nri"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 93
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    .line 95
    const-string v15, "^(\\d)+$"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 96
    invoke-virtual {v15, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 97
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_0

    .line 98
    sget-object v1, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version code\u5728\u5339\u914d\u6b63\u5219\u8868\u8fbe\u5f0f\u65f6\u5931\u8d25\uff0c\u4e0d\u7b26\u5408version code\u89c4\u5219\uff0cversion code\u4e3a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_1
    return v1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    sget-object v3, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 102
    :cond_0
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 107
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcn/domob/android/ads/u;->a(Landroid/content/SharedPreferences;Ljava/lang/StringBuilder;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 108
    sget-object v15, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    const-string v16, "\u66f4\u65b0\u672c\u5730\u66f4\u65b0\u4fe1\u606f"

    invoke-virtual/range {v15 .. v16}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 110
    const-string v15, "n"

    invoke-interface {v3, v15, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v4, "nt"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v4, "vc"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v4, "vn"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v4, "u"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v4, "s"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v4, "md5"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v4, "ul"

    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v4, "f"

    invoke-interface {v3, v4, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v4, "sk"

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v4, "nrt"

    invoke-interface {v3, v4, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v4, "nri"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v1, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_1
    :goto_2
    monitor-exit v2

    .line 133
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 127
    :cond_2
    sget-object v1, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/J;

    const-string v3, "\u4e0d\u9700\u8981\u9700\u8981\u66f4\u65b0\u672c\u5730\u66f4\u65b0\u4fe1\u606f"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
