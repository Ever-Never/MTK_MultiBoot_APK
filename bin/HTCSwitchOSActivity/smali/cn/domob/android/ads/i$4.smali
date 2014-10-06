.class Lcn/domob/android/ads/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/H;Lcn/domob/android/ads/l$b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/H;

.field final synthetic b:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;Lcn/domob/android/ads/H;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcn/domob/android/ads/i$4;->b:Lcn/domob/android/ads/i;

    iput-object p2, p0, Lcn/domob/android/ads/i$4;->a:Lcn/domob/android/ads/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/c;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 869
    const-string v0, "domob"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 873
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcn/domob/android/ads/i$4;->b:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/b;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->f()V

    .line 880
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/i$4;->b:Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/i$4;->a:Lcn/domob/android/ads/H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcn/domob/android/ads/i;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
