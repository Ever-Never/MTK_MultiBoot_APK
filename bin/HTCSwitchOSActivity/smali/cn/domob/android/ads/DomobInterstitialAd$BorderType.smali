.class public final enum Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/DomobInterstitialAd$BorderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

.field public static final enum None:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

.field public static final enum White:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

.field private static final synthetic a:[Lcn/domob/android/ads/DomobInterstitialAd$BorderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    const-string v1, "White"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->White:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    new-instance v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    const-string v1, "Black"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    new-instance v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->None:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    sget-object v1, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->White:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->None:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->a:[Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->a:[Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    invoke-virtual {v0}, [Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    return-object v0
.end method
