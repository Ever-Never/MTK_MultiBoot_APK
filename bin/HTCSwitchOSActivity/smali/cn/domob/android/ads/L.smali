.class abstract Lcn/domob/android/ads/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcn/domob/android/ads/ac;


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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/domob/android/ads/L;->a:Ljava/util/Map;

    .line 13
    iput-object p2, p0, Lcn/domob/android/ads/L;->b:Lcn/domob/android/ads/ac;

    .line 14
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 19
    iget-object v0, p0, Lcn/domob/android/ads/L;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    if-nez v0, :cond_0

    move v0, v1

    .line 26
    :goto_0
    return v0

    .line 24
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    move v0, v1

    .line 26
    goto :goto_0
.end method

.method abstract a()V
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/android/ads/L;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)F
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/L;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    if-nez v0, :cond_0

    move v0, v1

    .line 43
    :goto_0
    return v0

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    move v0, v1

    .line 43
    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 49
    const-string v0, "true"

    iget-object v1, p0, Lcn/domob/android/ads/L;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
