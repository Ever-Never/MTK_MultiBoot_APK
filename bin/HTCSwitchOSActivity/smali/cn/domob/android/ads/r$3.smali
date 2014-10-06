.class Lcn/domob/android/ads/r$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/r;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/r;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/r;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->b(Lcn/domob/android/ads/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d \u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->e(Lcn/domob/android/ads/r;)V

    .line 206
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->g(Lcn/domob/android/ads/r;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/16 v0, 0x201

    if-ne p1, v0, :cond_2

    .line 225
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->h(Lcn/domob/android/ads/r;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->d(Lcn/domob/android/ads/r;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->c(Lcn/domob/android/ads/r;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->j(Lcn/domob/android/ads/r;)V

    .line 217
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->f(Lcn/domob/android/ads/r;)V

    .line 237
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$3;->a:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->i(Lcn/domob/android/ads/r;)V

    .line 244
    :cond_0
    return-void
.end method
