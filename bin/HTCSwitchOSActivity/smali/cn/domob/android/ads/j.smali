.class public Lcn/domob/android/ads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcn/domob/android/ads/B;

.field private static b:Lcn/domob/android/ads/J;

.field private static c:Lcn/domob/android/ads/j;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/J;

    .line 37
    sput-object v2, Lcn/domob/android/ads/j;->k:Ljava/lang/String;

    .line 38
    sput-object v2, Lcn/domob/android/ads/j;->l:Ljava/lang/String;

    .line 39
    sput-object v2, Lcn/domob/android/ads/j;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "http://r.domob.cn/a/"

    iput-object v0, p0, Lcn/domob/android/ads/j;->d:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcn/domob/android/ads/j;->f:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/j;->g:Z

    .line 34
    iput-object v1, p0, Lcn/domob/android/ads/j;->j:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcn/domob/android/ads/j;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcn/domob/android/ads/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/android/ads/j;->c:Lcn/domob/android/ads/j;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcn/domob/android/ads/j;

    invoke-direct {v0}, Lcn/domob/android/ads/j;-><init>()V

    sput-object v0, Lcn/domob/android/ads/j;->c:Lcn/domob/android/ads/j;

    .line 49
    :cond_0
    sget-object v0, Lcn/domob/android/ads/j;->c:Lcn/domob/android/ads/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 96
    :try_start_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "DOMOB_PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 98
    iput-object v1, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/j;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    :try_start_2
    const-string v1, "DomobSDK"

    const-string v2, "DOMOB_PID is missed in AndroidManifest.xml!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 108
    const-string v2, "DomobSDK"

    const-string v3, "Failed to get applicationInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v2, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    sget-object v0, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set AD server url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcn/domob/android/ads/j;->d:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 224
    sput-object p1, Lcn/domob/android/ads/j;->k:Ljava/lang/String;

    .line 225
    sput-object p2, Lcn/domob/android/ads/j;->l:Ljava/lang/String;

    .line 226
    const-string v0, "0"

    sput-object v0, Lcn/domob/android/ads/j;->m:Ljava/lang/String;

    .line 228
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 236
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 237
    sget-object v4, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/J;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "origin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 238
    sput-object v3, Lcn/domob/android/ads/j;->m:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_0
    :goto_1
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    sget-object v0, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/J;

    const-string v1, "ors json exception."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected a(ZJI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcn/domob/android/ads/j;->g:Z

    .line 132
    iput-wide p2, p0, Lcn/domob/android/ads/j;->h:J

    .line 133
    iput p4, p0, Lcn/domob/android/ads/j;->i:I

    .line 134
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/j;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcn/domob/android/ads/d;

    const-string v1, "domob_config"

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    const-string v1, "cookie_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j;->f:Ljava/lang/String;

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const-string v0, "DomobSDK"

    const-string v1, "Incorrect Domob publisher ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current publisherID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcn/domob/android/ads/j;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method protected c()J
    .locals 4

    .prologue
    .line 162
    iget-wide v0, p0, Lcn/domob/android/ads/j;->h:J

    iget v2, p0, Lcn/domob/android/ads/j;->i:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcn/domob/android/ads/j;->f:Ljava/lang/String;

    .line 119
    return-void
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 137
    iget-boolean v0, p0, Lcn/domob/android/ads/j;->g:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/domob/android/ads/j;->h:J

    iget v0, p0, Lcn/domob/android/ads/j;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 140
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/domob/android/ads/j;->g:Z

    if-eqz v2, :cond_0

    .line 142
    iput-boolean v1, p0, Lcn/domob/android/ads/j;->g:Z

    .line 143
    iput-wide v8, p0, Lcn/domob/android/ads/j;->h:J

    .line 144
    iput v1, p0, Lcn/domob/android/ads/j;->i:I

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v3, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v3, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v3, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Lcn/domob/android/ads/d;

    const-string v3, "domob_config"

    invoke-direct {v1, p1, v3}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d;->a(Ljava/util/HashMap;)V

    .line 155
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 137
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcn/domob/android/ads/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcn/domob/android/ads/j;->j:Ljava/lang/String;

    .line 210
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcn/domob/android/ads/j;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/ads/j;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 254
    sget-object v1, Lcn/domob/android/ads/j;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 258
    sget-object v2, Lcn/domob/android/ads/j;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 259
    if-gt v1, v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    sget-object v1, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/J;

    const-string v2, "get origin detection config update"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcn/domob/android/ads/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcn/domob/android/ads/j;->k:Ljava/lang/String;

    return-object v0
.end method
