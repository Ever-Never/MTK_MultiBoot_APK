.class Lcn/domob/android/ads/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/I$a;
    }
.end annotation


# static fields
.field private static A:Lcn/domob/android/ads/I; = null

.field private static a:Lcn/domob/android/ads/J; = null

.field private static final b:Ljava/lang/String; = "method"

.field private static final c:Ljava/lang/String; = "ua"

.field private static final d:Ljava/lang/String; = "cid"

.field private static final e:Ljava/lang/String; = "ipb"

.field private static final f:Ljava/lang/String; = "sv"

.field private static final g:Ljava/lang/String; = "apn"

.field private static final h:Ljava/lang/String; = "network"

.field private static final i:Ljava/lang/String; = "idv"

.field private static final j:Ljava/lang/String; = "get_task_list"

.field private static final k:Ljava/lang/String; = "report_result"

.field private static final l:Ljava/lang/String; = "3rd"

.field private static final m:Ljava/lang/String; = "tasks"

.field private static final n:Ljava/lang/String; = "det_interval"

.field private static final o:Ljava/lang/String; = "pb[version_code]"

.field private static final p:Ljava/lang/String; = "pb[identifier]"

.field private static final q:Ljava/lang/String; = "result"

.field private static final r:Ljava/lang/String; = "visit"

.field private static final s:Ljava/lang/String; = "seqid"

.field private static final t:Ljava/lang/String; = "vcode"

.field private static final u:Ljava/lang/String; = "s"

.field private static final v:Ljava/lang/String; = "c"

.field private static final w:J = 0x36ee80L

.field private static final x:J = 0x240c8400L

.field private static final y:J = 0x927c0L


# instance fields
.field private B:Lcn/domob/android/ads/i;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/I;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/I;->A:Lcn/domob/android/ads/I;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/I;->B:Lcn/domob/android/ads/i;

    .line 59
    return-void
.end method

.method protected static a()Lcn/domob/android/ads/I;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcn/domob/android/ads/I;->A:Lcn/domob/android/ads/I;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcn/domob/android/ads/I;

    invoke-direct {v0}, Lcn/domob/android/ads/I;-><init>()V

    sput-object v0, Lcn/domob/android/ads/I;->A:Lcn/domob/android/ads/I;

    .line 67
    :cond_0
    sget-object v0, Lcn/domob/android/ads/I;->A:Lcn/domob/android/ads/I;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    const/4 v0, 0x1

    .line 350
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    invoke-static {v3, v1, v0, v2}, Lcn/domob/android/ads/I;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 355
    if-eqz v2, :cond_1

    .line 356
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    .line 358
    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post params string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 283
    const-string v0, "method"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {p0}, Lcn/domob/android/ads/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    const-string v0, "Android,,,,,,,,"

    .line 290
    :cond_0
    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v2, Lcn/domob/android/ads/d;

    const-string v3, "domob_config"

    invoke-direct {v2, p0, v3}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    const-string v3, "cookie_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_1

    .line 296
    sget-object v3, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-class v4, Lcn/domob/android/ads/I;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const-string v3, "cid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 301
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 302
    const-string v4, "ipb"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_0
    invoke-static {p0}, Lcn/domob/android/ads/q;->b(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 310
    const-string v5, "pb[version_code]"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_2
    invoke-static {p0}, Lcn/domob/android/ads/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 315
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 316
    const-string v5, "pb[identifier]"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_3
    const-string v4, "sv"

    const-string v5, "030105"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v4, "network"

    invoke-static {p0}, Lcn/domob/android/ads/q;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v4, "idv"

    invoke-static {p0}, Lcn/domob/android/ads/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v4, "vcode"

    invoke-static {v3, v0, v2}, Lcn/domob/android/ads/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/s$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-object v1

    .line 304
    :cond_4
    const-string v4, "DomobSDK"

    const-string v5, "publisher id is null or empty!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/d;

    const-string v1, "domob_config"

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v2, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetectTime error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/I;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/domob/android/ads/I;->b()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 334
    if-eqz p3, :cond_1

    .line 335
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/I;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 215
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/I;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 216
    sget-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    invoke-static {p1}, Lcn/domob/android/ads/q;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v2, "is emulator ignore request"

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    :try_start_0
    new-instance v2, Lcn/domob/android/ads/d;

    const-string v3, "domob_config"

    invoke-direct {v2, p1, v3}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    const-string v3, "next_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 105
    cmp-long v4, v2, v7

    if-gez v4, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 113
    sget-object v4, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceed detInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " min"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v2, v2, v7

    if-ltz v2, :cond_0

    move v0, v1

    .line 118
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    sget-object v2, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsNeedDetect error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/I;->z:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v1, "need to detect"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/I;->z:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/I;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v1, "no need to detect"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info detect has Throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const-wide/32 v6, 0x240c8400

    .line 141
    const-wide/32 v0, 0x927c0

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;J)V

    .line 142
    const-string v0, "get_task_list"

    invoke-static {p1, v0}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/I;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Lcn/domob/android/ads/v;

    invoke-direct {v1, p1}, Lcn/domob/android/ads/v;-><init>(Landroid/content/Context;)V

    .line 144
    sget-object v2, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https req:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcn/domob/android/ads/I;->B:Lcn/domob/android/ads/i;

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/v;->a(Ljava/lang/String;Lcn/domob/android/ads/i;)Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v2, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https rsp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 156
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 157
    :cond_2
    sget-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v1, "Https rsp jsonobject is error"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDetectInfo has a exception msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    :cond_3
    :try_start_1
    const-string v2, "det_interval"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    if-nez v2, :cond_5

    .line 163
    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;J)V

    .line 176
    :goto_1
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 181
    :cond_4
    sget-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v1, "Can\'t find a tag name of task"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 168
    cmp-long v4, v2, v6

    if-lez v4, :cond_6

    .line 169
    const-wide/32 v2, 0x240c8400

    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;J)V

    goto :goto_1

    .line 171
    :cond_6
    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;J)V

    goto :goto_1

    .line 185
    :cond_7
    const-string v3, "report_result"

    invoke-static {p1, v3}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 187
    const-string v4, "seqid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    const-string v4, "seqid"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    invoke-direct {p0, v2, v0}, Lcn/domob/android/ads/I;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 195
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 196
    const-string v4, "result"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "result"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz v3, :cond_0

    .line 200
    invoke-direct {p0, v3}, Lcn/domob/android/ads/I;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcn/domob/android/ads/I;->B:Lcn/domob/android/ads/i;

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/v;->a(Ljava/lang/String;Lcn/domob/android/ads/i;)Ljava/lang/String;

    .line 202
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Https send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 223
    :try_start_0
    const-string v0, "3rd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "3rd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 227
    if-nez v1, :cond_1

    .line 228
    sget-object v0, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v1, "Https rsp JSONArray is error"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkThirdPartyExist has exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 233
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 235
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 237
    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :catch_1
    move-exception v4

    .line 239
    :try_start_3
    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 240
    :catch_2
    move-exception v3

    .line 241
    sget-object v3, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    const-string v4, "check package has exception"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 244
    :cond_2
    const-string v0, "3rd"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 254
    const-string v0, "visit"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 256
    if-eqz v2, :cond_1

    .line 258
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/p;

    iget-object v1, p0, Lcn/domob/android/ads/I;->z:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/android/ads/I;->z:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GET"

    const/4 v6, 0x0

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/p$a;)V

    .line 260
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->c()V

    .line 261
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->e()Ljava/lang/String;

    move-result-object v1

    .line 262
    if-nez v1, :cond_0

    const-string v1, ""

    .line 264
    :cond_0
    const-string v2, "c"

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "s"

    invoke-virtual {v0}, Lcn/domob/android/ads/p;->f()I

    move-result v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string v0, "visit"

    invoke-virtual {p2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visit url has a Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    :try_start_1
    const-string v1, "c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "s"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    const-string v0, "visit"

    invoke-virtual {p2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    sget-object v1, Lcn/domob/android/ads/I;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized a(Landroid/content/Context;Lcn/domob/android/ads/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/I;->z:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/domob/android/ads/I;->B:Lcn/domob/android/ads/i;

    .line 73
    new-instance v0, Lcn/domob/android/ads/I$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/I$1;-><init>(Lcn/domob/android/ads/I;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/I$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
