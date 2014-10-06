.class public Lcn/domob/android/ads/DomobInterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
    }
.end annotation


# static fields
.field public static final INTERSITIAL_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INTERSITIAL_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INTERSITIAL_SIZE_FULL_SCREEN:Ljava/lang/String;

.field private static a:Lcn/domob/android/ads/J;


# instance fields
.field private b:Lcn/domob/android/ads/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/DomobInterstitialAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/ads/J;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->INTERSITIAL_SIZE_FULL_SCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "publisherID"
    .parameter "size"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcn/domob/android/ads/w;

    invoke-direct {v0, p1, p2, p3}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .parameter "context"
    .parameter "publisherID"
    .parameter "size"
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v4, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 68
    :goto_0
    new-instance v0, Lcn/domob/android/ads/w;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    .line 69
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)V
    .locals 1
    .parameter "context"
    .parameter "publisherID"
    .parameter "size"
    .parameter "borderType"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcn/domob/android/ads/w;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    .line 48
    return-void
.end method


# virtual methods
.method public isInterstitialAdReady()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0}, Lcn/domob/android/ads/w;->n()Z

    move-result v0

    return v0
.end method

.method public loadInterstitialAd()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0}, Lcn/domob/android/ads/w;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0}, Lcn/domob/android/ads/w;->m()V

    .line 77
    :cond_0
    return-void
.end method

.method public setInterstitialAdListener(Lcn/domob/android/ads/DomobInterstitialAdListener;)V
    .locals 1
    .parameter "interstitialAdListener"

    .prologue
    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/DomobInterstitialAdListener;)V

    .line 86
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/w;->setKeyword(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .parameter "birthday"

    .prologue
    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/w;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .parameter "gender"

    .prologue
    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/w;->setUserGender(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .parameter "pc"

    .prologue
    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/w;->setUserPostcode(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public showInterstitialAd(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0}, Lcn/domob/android/ads/w;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/ads/J;

    const-string v1, "Show Interstitial View."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/w;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/w;->a(Landroid/content/Context;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/ads/J;

    const-string v1, "Interstial ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
