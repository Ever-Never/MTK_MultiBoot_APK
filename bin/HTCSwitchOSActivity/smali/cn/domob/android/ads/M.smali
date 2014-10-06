.class Lcn/domob/android/ads/M;
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
    .line 55
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/L;-><init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V

    .line 56
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/domob/android/ads/M;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->c()Lcn/domob/android/ads/V;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/V;->d()V

    .line 60
    return-void
.end method
