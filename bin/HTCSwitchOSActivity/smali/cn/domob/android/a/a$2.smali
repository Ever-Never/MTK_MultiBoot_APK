.class Lcn/domob/android/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/a/a;->a(Ljava/lang/String;J)V
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
    .line 350
    iput-object p1, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->l(Lcn/domob/android/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 360
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u7ebf\u7a0b\u51fa\u9519\uff0c\u9519\u8bef\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a;->b()V

    .line 362
    invoke-static {}, Lcn/domob/android/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-static {v0, p1}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcn/domob/android/a/a$2;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcn/domob/android/a/c;->a(ILjava/lang/String;)V

    .line 368
    :cond_1
    return-void
.end method
