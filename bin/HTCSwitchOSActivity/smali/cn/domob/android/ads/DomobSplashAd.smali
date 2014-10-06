.class public Lcn/domob/android/ads/DomobSplashAd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/J;


# instance fields
.field private b:Lcn/domob/android/ads/B;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/DomobSplashAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "publisherID"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Z

    .line 19
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 29
    new-instance v0, Lcn/domob/android/ads/B;

    invoke-direct {v0, p1, p2}, Lcn/domob/android/ads/B;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    .line 30
    return-void
.end method


# virtual methods
.method public isSplashAdReady()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Z

    .line 46
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0}, Lcn/domob/android/ads/B;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 47
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    return v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->setKeyword(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setSplashAdListener(Lcn/domob/android/ads/DomobSplashAdListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/DomobSplashAdListener;)V

    .line 39
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .parameter "birthday"

    .prologue
    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .parameter "gender"

    .prologue
    .line 90
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->setUserGender(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .parameter "pc"

    .prologue
    .line 110
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->setUserPostcode(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public splash(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcn/domob/android/ads/DomobSplashAd;->a:Lcn/domob/android/ads/J;

    const-string v1, "Show Splash View."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->a(Landroid/content/Context;)V

    .line 59
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Z

    .line 72
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Z

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "DomobSDK"

    const-string v1, "Splash AD is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobSplashAd;->isSplashAdReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Lcn/domob/android/ads/B;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/B;->a(Landroid/content/Context;)V

    .line 66
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Z

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "DomobSDK"

    const-string v1, "Splash AD is not ready yet. Please call \"isSplashReady()\" first to check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
