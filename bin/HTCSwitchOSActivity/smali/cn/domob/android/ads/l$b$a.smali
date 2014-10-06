.class Lcn/domob/android/ads/l$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/l$b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/l$b;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 410
    iput-object p1, p0, Lcn/domob/android/ads/l$b$a;->a:Lcn/domob/android/ads/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    if-eqz p2, :cond_0

    .line 412
    const-string v0, "render"

    const-string v1, "fs"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b$a;->b:Ljava/lang/String;

    .line 413
    const-string v0, "ct"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b$a;->c:Ljava/lang/String;

    .line 414
    const-string v0, "url"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b$a;->d:Ljava/lang/String;

    .line 415
    const-string v0, "content"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b$a;->f:Ljava/lang/String;

    .line 416
    const-string v0, "base_url"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b$a;->e:Ljava/lang/String;

    .line 417
    const-string v0, "o"

    const-string v1, "h"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b$a;->g:Ljava/lang/String;

    .line 418
    const-string v0, "preload"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/l$b$a;->h:Z

    .line 419
    const-string v0, "timeout"

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b$a;->i:I

    .line 420
    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/l$b$a;->j:Z

    .line 421
    const-string v0, "cls_btn"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/l$b$a;->k:Z

    .line 422
    const-string v0, "width"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b$a;->l:I

    .line 423
    const-string v0, "height"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b$a;->m:I

    .line 425
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcn/domob/android/ads/l$b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcn/domob/android/ads/l$b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcn/domob/android/ads/l$b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcn/domob/android/ads/l$b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcn/domob/android/ads/l$b$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcn/domob/android/ads/l$b$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcn/domob/android/ads/l$b$a;->h:Z

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcn/domob/android/ads/l$b$a;->i:I

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcn/domob/android/ads/l$b$a;->j:Z

    return v0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcn/domob/android/ads/l$b$a;->k:Z

    return v0
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcn/domob/android/ads/l$b$a;->l:I

    return v0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcn/domob/android/ads/l$b$a;->m:I

    return v0
.end method
