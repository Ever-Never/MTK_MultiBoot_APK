.class Lcn/domob/android/ads/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/H;Lcn/domob/android/ads/l$b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/c;)V
    .locals 2
    .parameter

    .prologue
    .line 847
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Both banner and expandable part are ok in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/b;)V

    .line 850
    iget-object v0, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;Lcn/domob/android/ads/l$b$a;)V

    .line 853
    :cond_0
    return-void
.end method

.method public b(Lcn/domob/android/ads/c;)V
    .locals 2
    .parameter

    .prologue
    .line 857
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "FAILED to load domob expandable view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 859
    return-void
.end method

.method public c(Lcn/domob/android/ads/c;)V
    .locals 2
    .parameter

    .prologue
    .line 839
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Timeout while loading expandable part. Show AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/i$3;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/b;)V

    .line 841
    return-void
.end method
