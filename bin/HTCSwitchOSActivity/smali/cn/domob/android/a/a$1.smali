.class Lcn/domob/android/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/a/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/a/a;


# direct methods
.method constructor <init>(Lcn/domob/android/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 325
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rom can\'t chmod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v0, "sd\u5361\u4e0d\u5b58\u5728"

    .line 327
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcn/domob/android/a/c;->a(ILjava/lang/String;)V

    .line 330
    :cond_0
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1, v0}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public a(JJJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not enough size sdsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " romsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "\u7a7a\u95f4\u4e0d\u8db3"

    .line 316
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcn/domob/android/a/c;->a(ILjava/lang/String;)V

    .line 319
    :cond_0
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1, v0}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 290
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v0, p1}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;J)V

    .line 293
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 297
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is download but not finished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v0, p1}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    iget-object v2, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;J)V

    .line 302
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 306
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is  not download,it will download in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v0, p1}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    iget-object v1, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;J)V

    .line 309
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 335
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65e0\u6cd5\u8fde\u63a5\u5230\u4e0b\u8f7d\u5730\u5740"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/a/c;->a(ILjava/lang/String;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcn/domob/android/a/a$1;->a:Lcn/domob/android/a/a;

    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u5230\u4e0b\u8f7d\u5730\u5740"

    invoke-static {v0, v1}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;Ljava/lang/String;)V

    .line 340
    return-void
.end method
