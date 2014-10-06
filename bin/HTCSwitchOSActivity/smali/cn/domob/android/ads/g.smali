.class final Lcn/domob/android/ads/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 18
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ad_alive_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    :try_start_0
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 26
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expired ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 28
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 29
    const-string v3, "_ad_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ad_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    const-string v4, "domob_splash_ad_cache_res"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 33
    sget-object v5, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete the expired ad: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 34
    sget-object v3, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "helper.delete return is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "there is no expired ad"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_2
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 40
    :goto_2
    :try_start_2
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 41
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "Error happened when delete the expires ad."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 43
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 39
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_ad_id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "domob_splash_ad_cache_res"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 163
    if-lez v0, :cond_0

    .line 164
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ad succuss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 401
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 403
    if-eqz p3, :cond_0

    .line 404
    :try_start_0
    const-string v2, "local_path"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    .line 408
    const-string v2, "ts"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    const-string v2, "alias_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_2
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 417
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "Failed to update alias info."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 516
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 517
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened when deleting file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 529
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcn/domob/android/ads/ae;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 115
    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "SplashAd validate failed, ignoring the insert"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return v6

    .line 119
    :cond_1
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 125
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 126
    const-string v1, "_ad_id"

    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "_ad_content"

    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "_ad_alive_time"

    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v1, "_enter_db_time"

    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v1, "_ad_type"

    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "_orientation"

    invoke-virtual {p2}, Lcn/domob/android/ads/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 138
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v3, "one column ad is already in cache, so just update it"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 139
    const-string v2, "domob_splash_ad_cache_res"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_2
    if-gez v0, :cond_4

    move v0, v6

    .line 152
    :goto_1
    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v6, v0

    goto :goto_0

    .line 143
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 145
    :cond_5
    :try_start_2
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v3, "no ad is in the cache, so need to be inserted"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 146
    const-string v2, "domob_splash_ad_cache_res"

    invoke-virtual {v0, v2, v8}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 148
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 149
    :goto_2
    :try_start_3
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 150
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "error occured in insertOrUpdate function"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 152
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_6

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 152
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 148
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v3

    .line 299
    :try_start_0
    const-string v4, "SELECT * FROM %s WHERE %s=\"%s\" AND %s=\"%s\""

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "creative_alias"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "creative_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    const-string v7, "alias"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 302
    sget-object v5, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCreativeHasAlias sql:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_1

    .line 311
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    .line 316
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    :try_start_1
    sget-object v3, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 311
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 176
    .line 179
    :try_start_0
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 180
    const-string v1, "creative_alias"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creative_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    if-eqz v1, :cond_6

    .line 184
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 185
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records in DB with creativeID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    move v2, v8

    .line 187
    :goto_0
    if-ge v2, v0, :cond_5

    .line 188
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 189
    const-string v3, "alias"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 190
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    if-nez v4, :cond_2

    .line 196
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local path of resource "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not available."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/g;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    .line 219
    :cond_1
    :goto_1
    return v0

    .line 200
    :cond_2
    :try_start_2
    sget-object v5, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local location of resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_3
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "Alias %s is in table creative_alias but not in alias_info."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_1

    .line 214
    :cond_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 214
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    move v0, v6

    .line 219
    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 212
    :goto_3
    :try_start_3
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 214
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 214
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 211
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method protected b(Landroid/content/Context;)Lcn/domob/android/ads/ae;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 57
    .line 58
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 64
    :try_start_0
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 65
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " available cached splash  ad"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    new-instance v1, Lcn/domob/android/ads/ae;

    invoke-direct {v1}, Lcn/domob/android/ads/ae;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :try_start_2
    const-string v0, "_ad_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/ae;->b(Ljava/lang/String;)V

    .line 75
    const-string v0, "_ad_content"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/ae;->c(Ljava/lang/String;)V

    .line 78
    const-string v0, "_ad_alive_time"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcn/domob/android/ads/ae;->a(J)V

    .line 81
    const-string v0, "_enter_db_time"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcn/domob/android/ads/ae;->b(J)V

    .line 84
    const-string v0, "_ad_type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 85
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/ae;->d(Ljava/lang/String;)V

    .line 87
    const-string v0, "_orientation"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/ae;->a(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v3, "succeed to get a SplashAd"

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 98
    :goto_0
    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_0
    :goto_1
    return-object v0

    .line 92
    :cond_1
    :try_start_3
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "no such type ad in cache"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v6

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 95
    :goto_2
    :try_start_4
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 96
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "error occured in getSplashCacheAd"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_2

    .line 99
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 98
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_3

    .line 94
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-static {p2}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :try_start_0
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 354
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    const-string v2, "alias"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    if-eqz p3, :cond_0

    .line 357
    const-string v2, "local_path"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string v2, "alias_info"

    invoke-virtual {v0, v2, v1}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 364
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "Failed to insert alias info."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 234
    :try_start_0
    const-string v1, "alias_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    const-string v0, "local_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 241
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 248
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v6

    .line 253
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 246
    :goto_2
    :try_start_2
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 248
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 248
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 245
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected c(Landroid/content/Context;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 460
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 463
    :try_start_0
    const-string v1, "alias_info"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "alias"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "local_path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ts"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ts"

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 466
    if-eqz v1, :cond_1

    .line 467
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 468
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alias number stored in DB is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 469
    const/16 v2, 0xa

    if-le v0, v2, :cond_4

    .line 470
    add-int/lit8 v2, v0, -0xa

    .line 471
    sget-object v3, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v4, "Alias number=%d is larger than max=%d, %d to delete."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 475
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v7

    .line 476
    :goto_0
    if-ge v0, v2, :cond_0

    .line 477
    const-string v3, "alias"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 478
    const-string v4, "local_path"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 479
    const-string v5, "ts"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 481
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 484
    sget-object v7, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v8, "Alias to delete: %s selected/inserted at %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0, v4}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/g;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 494
    :cond_0
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "Finish to delete old resources."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_2
    :goto_2
    return-void

    .line 476
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_4
    :try_start_2
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "There is no need to delete resources."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    :goto_3
    :try_start_3
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 501
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "Failed to delete resources."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 503
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 503
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 499
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-static {p2}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 381
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 382
    const-string v2, "alias"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "creative_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "creative_alias"

    invoke-virtual {v0, v2, v1}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 387
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "Failed to insert creative-alias."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 264
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 267
    :try_start_0
    const-string v1, "alias_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 273
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/g;->f(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    const/4 v0, 0x1

    .line 279
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 277
    :goto_2
    :try_start_2
    sget-object v2, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 279
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 276
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 330
    :cond_0
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "Alias %s is in DB but the local path is null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 340
    :goto_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 332
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/g;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-static {p2}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 430
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 432
    :cond_0
    return-void
.end method

.method protected g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-static {p2}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 443
    invoke-static {p1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Lcn/domob/android/ads/f;

    move-result-object v0

    .line 445
    :try_start_0
    const-string v1, "alias_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    sget-object v1, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 449
    sget-object v0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "Failed to delete alias info."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
