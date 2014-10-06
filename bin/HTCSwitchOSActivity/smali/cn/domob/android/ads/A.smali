.class Lcn/domob/android/ads/A;
.super Lcn/domob/android/ads/i;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/D$a;


# static fields
.field private static B:Lcn/domob/android/ads/J; = null

.field private static final C:Ljava/lang/String; = "addAsset"

.field private static final D:Ljava/lang/String; = "addAssets"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/A;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/i;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "Init Splash controller."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method static synthetic H()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/H;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "All resources are replaced. Show Splash."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcn/domob/android/ads/A;->c:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/B;

    invoke-virtual {v0}, Lcn/domob/android/ads/B;->n()V

    .line 208
    return-void
.end method

.method public a(Lcn/domob/android/ads/l;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "An ad response is received by splash controller."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_6

    .line 36
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 38
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "There is a cached ad witch is about to be show."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l;I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 46
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->f()Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v0, Lcn/domob/android/ads/p;

    iget-object v1, p0, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/p$a;)V

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->c()V

    .line 53
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->e()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    :try_start_0
    sget-object v1, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download content from ad url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->a()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 59
    const-string v1, "ad"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    const-string v3, "ct"

    const-string v4, "content"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v3, "content"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified ad response after downloading ad content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Lcn/domob/android/ads/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 84
    :cond_3
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "There is a new ad witch is about to be inserted into DB."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcn/domob/android/ads/ae;

    invoke-direct {v0}, Lcn/domob/android/ads/ae;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ae;->b(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ae;->d(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ae;->c(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/ae;->a(J)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/ae;->b(J)V

    .line 92
    new-instance v1, Lcn/domob/android/ads/g;

    invoke-direct {v1}, Lcn/domob/android/ads/g;-><init>()V

    iget-object v2, p0, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/g;->a(Landroid/content/Context;Lcn/domob/android/ads/ae;)Z

    .line 95
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l;I)V

    goto/16 :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 73
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "Failed to modify response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_4
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "Failed to download creative content. This AD response won\'t be saved."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    const-string v1, "There is a error info response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 98
    const-string v0, "DomobSDK"

    const-string v1, "Response contains error info. Error code is [%d] and error content is [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_6
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l;I)V

    goto/16 :goto_0
.end method

.method protected a(Lcn/domob/android/ads/l;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 185
    sget-object v0, Lcn/domob/android/ads/A;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to splash.Report fail event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 190
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 191
    new-instance v4, Lcn/domob/android/ads/z$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/z$c;-><init>(Lcn/domob/android/ads/z;)V

    .line 192
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->l()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/domob/android/ads/z$c;->a:Ljava/lang/String;

    .line 197
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    const-string v1, "http://e.domob.cn/event_report"

    .line 201
    :cond_1
    sget-object v2, Lcn/domob/android/ads/z$h;->i:Lcn/domob/android/ads/z$h;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    .line 202
    return-void

    :cond_2
    move-object v4, v5

    move-object v1, v5

    goto :goto_0
.end method

.method protected z()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/A$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/A$1;-><init>(Lcn/domob/android/ads/A;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method
