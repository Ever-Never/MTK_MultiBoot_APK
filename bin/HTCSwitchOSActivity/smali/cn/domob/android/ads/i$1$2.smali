.class Lcn/domob/android/ads/i$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i$1;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/c;)V
    .locals 4
    .parameter

    .prologue
    .line 626
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Finished to load domob banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_1

    .line 635
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v2, "There is expandable part in current creative."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v2, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->b()Lcn/domob/android/ads/c;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/H;

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b$a;->g()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;Lcn/domob/android/ads/H;Lcn/domob/android/ads/l$b$a;Z)V

    .line 638
    invoke-virtual {v1}, Lcn/domob/android/ads/l$b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Expandable preload is disabled in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 647
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v1, v1, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/b;)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Banner is ready and there is no expandable part in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcn/domob/android/ads/c;)V
    .locals 2
    .parameter

    .prologue
    .line 652
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "FAILED to load domob banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 654
    return-void
.end method

.method public c(Lcn/domob/android/ads/c;)V
    .locals 2
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcn/domob/android/ads/i$1$2;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 622
    return-void
.end method
