.class final Lcn/domob/android/ads/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/P$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lcn/domob/android/ads/ac;)Lcn/domob/android/ads/L;
    .locals 1
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
            ")",
            "Lcn/domob/android/ads/L;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/ads/M;

    invoke-direct {v0, p1, p2}, Lcn/domob/android/ads/M;-><init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V

    return-object v0
.end method
