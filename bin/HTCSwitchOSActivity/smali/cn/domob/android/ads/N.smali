.class Lcn/domob/android/ads/N;
.super Lcn/domob/android/ads/L;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/ac;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/L;-><init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V

    .line 66
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 69
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/N;->a(Ljava/lang/String;)I

    move-result v2

    .line 70
    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/N;->a(Ljava/lang/String;)I

    move-result v3

    .line 71
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/N;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/N;->d(Ljava/lang/String;)Z

    move-result v4

    .line 73
    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/N;->d(Ljava/lang/String;)Z

    move-result v5

    .line 75
    if-gtz v2, :cond_0

    .line 76
    iget-object v0, p0, Lcn/domob/android/ads/N;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->c()Lcn/domob/android/ads/V;

    move-result-object v0

    iget v2, v0, Lcn/domob/android/ads/V;->c:I

    .line 77
    :cond_0
    if-gtz v3, :cond_1

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/N;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->c()Lcn/domob/android/ads/V;

    move-result-object v0

    iget v3, v0, Lcn/domob/android/ads/V;->d:I

    .line 80
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/N;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->c()Lcn/domob/android/ads/V;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/V;->a(Ljava/lang/String;IIZZ)V

    .line 81
    return-void
.end method
