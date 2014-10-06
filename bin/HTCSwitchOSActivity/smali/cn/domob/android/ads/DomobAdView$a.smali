.class public final enum Lcn/domob/android/ads/DomobAdView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/DomobAdView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/DomobAdView$a;

.field public static final enum b:Lcn/domob/android/ads/DomobAdView$a;

.field public static final enum c:Lcn/domob/android/ads/DomobAdView$a;

.field public static final enum d:Lcn/domob/android/ads/DomobAdView$a;

.field private static final synthetic e:[Lcn/domob/android/ads/DomobAdView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcn/domob/android/ads/DomobAdView$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobAdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView$a;->a:Lcn/domob/android/ads/DomobAdView$a;

    new-instance v0, Lcn/domob/android/ads/DomobAdView$a;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/DomobAdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView$a;

    new-instance v0, Lcn/domob/android/ads/DomobAdView$a;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/DomobAdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    new-instance v0, Lcn/domob/android/ads/DomobAdView$a;

    const-string v1, "SPLASH"

    invoke-direct {v0, v1, v5}, Lcn/domob/android/ads/DomobAdView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/domob/android/ads/DomobAdView$a;

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->a:Lcn/domob/android/ads/DomobAdView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    aput-object v1, v0, v5

    sput-object v0, Lcn/domob/android/ads/DomobAdView$a;->e:[Lcn/domob/android/ads/DomobAdView$a;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/DomobAdView$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcn/domob/android/ads/DomobAdView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdView$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/DomobAdView$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->e:[Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, [Lcn/domob/android/ads/DomobAdView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/DomobAdView$a;

    return-object v0
.end method
