.class Lcn/domob/android/ads/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/l;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/l;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 557
    iput-object p1, p0, Lcn/domob/android/ads/l$a;->a:Lcn/domob/android/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-boolean v1, p0, Lcn/domob/android/ads/l$a;->b:Z

    .line 558
    if-eqz p2, :cond_1

    .line 560
    const-string v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$a;->c:I

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/l$a;->b:Z

    .line 564
    :cond_0
    const-string v0, "disable"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/l$a;->d:Z

    .line 565
    const-string v0, "dis_time"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$a;->e:I

    .line 567
    const-string v0, "ors"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_1

    .line 569
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/l$a;->f:Ljava/lang/String;

    .line 570
    const-string v1, "config"

    const-string v2, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$a;->g:Ljava/lang/String;

    .line 573
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcn/domob/android/ads/l$a;->c:I

    return v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcn/domob/android/ads/l$a;->d:Z

    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcn/domob/android/ads/l$a;->e:I

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcn/domob/android/ads/l$a;->b:Z

    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcn/domob/android/ads/l$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcn/domob/android/ads/l$a;->g:Ljava/lang/String;

    return-object v0
.end method
