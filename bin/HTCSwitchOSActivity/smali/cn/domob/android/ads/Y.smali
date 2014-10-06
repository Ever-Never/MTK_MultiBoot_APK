.class Lcn/domob/android/ads/Y;
.super Lcn/domob/android/ads/Z;
.source "SourceFile"


# instance fields
.field private final a:Lcn/domob/android/ads/ac$k;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/ac$k;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/domob/android/ads/Z;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/domob/android/ads/Y;->a:Lcn/domob/android/ads/ac$k;

    .line 28
    return-void
.end method

.method public static a(Lcn/domob/android/ads/ac$k;)Lcn/domob/android/ads/Y;
    .locals 1
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcn/domob/android/ads/Y;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/Y;-><init>(Lcn/domob/android/ads/ac$k;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/Y;->a:Lcn/domob/android/ads/ac$k;

    invoke-virtual {v1}, Lcn/domob/android/ads/ac$k;->toString()Ljava/lang/String;

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
