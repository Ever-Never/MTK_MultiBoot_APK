.class Lcn/domob/android/ads/U;
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
    .line 86
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/L;-><init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V

    .line 87
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/U;->d(Ljava/lang/String;)Z

    move-result v0

    .line 91
    iget-object v1, p0, Lcn/domob/android/ads/U;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v1}, Lcn/domob/android/ads/ac;->c()Lcn/domob/android/ads/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/V;->b(Z)V

    .line 92
    return-void
.end method
