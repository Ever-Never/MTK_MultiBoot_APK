.class Lcn/domob/android/ads/ab;
.super Lcn/domob/android/ads/Z;
.source "SourceFile"


# instance fields
.field private final a:Lcn/domob/android/ads/ac$l;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/ac$l;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcn/domob/android/ads/Z;-><init>()V

    .line 63
    iput-object p1, p0, Lcn/domob/android/ads/ab;->a:Lcn/domob/android/ads/ac$l;

    .line 64
    return-void
.end method

.method public static a(Lcn/domob/android/ads/ac$l;)Lcn/domob/android/ads/ab;
    .locals 1
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcn/domob/android/ads/ab;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/ab;-><init>(Lcn/domob/android/ads/ac$l;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/ab;->a:Lcn/domob/android/ads/ac$l;

    invoke-virtual {v1}, Lcn/domob/android/ads/ac$l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
