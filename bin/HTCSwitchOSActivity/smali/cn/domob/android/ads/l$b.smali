.class Lcn/domob/android/ads/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/l$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/l;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Lcn/domob/android/ads/l$b$a;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field private s:I

.field private t:J

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/l;Lorg/json/JSONObject;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 198
    iput-object p1, p0, Lcn/domob/android/ads/l$b;->a:Lcn/domob/android/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/l$b;->w:I

    .line 199
    if-eqz p2, :cond_1

    .line 200
    const-string v0, "id"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->b:Ljava/lang/String;

    .line 201
    const-string v0, "format"

    const-string v1, "domob"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->c:Ljava/lang/String;

    .line 202
    const-string v0, "ct"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->d:Ljava/lang/String;

    .line 203
    const-string v0, "url"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->e:Ljava/lang/String;

    .line 204
    const-string v0, "base_url"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->f:Ljava/lang/String;

    .line 205
    const-string v0, "content"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->g:Ljava/lang/String;

    .line 206
    const-string v0, "width"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b;->h:I

    .line 207
    const-string v0, "height"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b;->i:I

    .line 209
    const-string v0, "expandable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lcn/domob/android/ads/l$b$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/l$b$a;-><init>(Lcn/domob/android/ads/l$b;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/l$b;->j:Lcn/domob/android/ads/l$b$a;

    .line 214
    :cond_0
    const-string v0, "click_tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->k:Ljava/lang/String;

    .line 215
    const-string v0, "imp_tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->l:Ljava/lang/String;

    .line 216
    const-string v0, "event_tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->m:Ljava/lang/String;

    .line 217
    const-string v0, "tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->n:Ljava/lang/String;

    .line 218
    const-string v0, "animation"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b;->o:I

    .line 219
    const-string v0, "o"

    const-string v1, "v"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->p:Ljava/lang/String;

    .line 220
    const-string v0, "cls_btn"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/l$b;->q:Z

    .line 221
    const-string v0, "imp_min"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b;->r:I

    .line 222
    const-string v0, "imp_cls"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$b;->s:I

    .line 223
    const-string v0, "expire"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x2a300

    add-long/2addr v1, v3

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/l$b;->t:J

    .line 225
    const-string v0, "rc"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/l$b;->u:Z

    .line 226
    const-string v0, "pkg"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$b;->v:Ljava/lang/String;

    .line 228
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput p1, p0, Lcn/domob/android/ads/l$b;->w:I

    .line 387
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcn/domob/android/ads/l$b;->h:I

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcn/domob/android/ads/l$b;->i:I

    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected i()Lcn/domob/android/ads/l$b$a;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->j:Lcn/domob/android/ads/l$b$a;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected n()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcn/domob/android/ads/l$b;->o:I

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcn/domob/android/ads/l$b;->q:Z

    return v0
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcn/domob/android/ads/l$b;->r:I

    return v0
.end method

.method protected r()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcn/domob/android/ads/l$b;->s:I

    return v0
.end method

.method protected s()J
    .locals 2

    .prologue
    .line 363
    iget-wide v0, p0, Lcn/domob/android/ads/l$b;->t:J

    return-wide v0
.end method

.method protected t()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcn/domob/android/ads/l$b;->u:Z

    return v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcn/domob/android/ads/l$b;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcn/domob/android/ads/l$b;->w:I

    return v0
.end method
