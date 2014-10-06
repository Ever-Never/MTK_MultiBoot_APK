.class Lcn/domob/android/ads/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/ads/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcn/domob/android/ads/c$3;->b:Lcn/domob/android/ads/c;

    iput-object p2, p0, Lcn/domob/android/ads/c$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/p;)V
    .locals 4
    .parameter

    .prologue
    .line 261
    invoke-virtual {p1}, Lcn/domob/android/ads/p;->f()I

    move-result v0

    .line 262
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView data downloading status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 263
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcn/domob/android/ads/p;->e()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download HTML data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/c$3;->b:Lcn/domob/android/ads/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/c$3$1;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/c$3$1;-><init>(Lcn/domob/android/ads/c$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    :cond_0
    return-void
.end method
