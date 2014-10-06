.class Lcn/domob/android/ads/ad;
.super Lcn/domob/android/ads/Z;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/domob/android/ads/Z;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcn/domob/android/ads/ad;->a:Z

    .line 81
    return-void
.end method

.method public static a(Z)Lcn/domob/android/ads/ad;
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcn/domob/android/ads/ad;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/ad;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcn/domob/android/ads/ad;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
