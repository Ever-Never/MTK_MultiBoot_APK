.class public Lcn/domob/android/ads/C;
.super Lcn/domob/android/ads/m;
.source "SourceFile"


# static fields
.field private static h:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/C;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/C;->h:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;)V

    .line 11
    sget-object v0, Lcn/domob/android/ads/C;->h:Lcn/domob/android/ads/J;

    const-string v1, "New instance of DomobSplashAdapter."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a()Lcn/domob/android/ads/c;
    .locals 4

    .prologue
    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/C;->b:Lcn/domob/android/ads/c;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcn/domob/android/ads/D;

    iget-object v1, p0, Lcn/domob/android/ads/C;->a:Landroid/content/Context;

    const-string v2, "banner"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/domob/android/ads/D;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/C;->b:Lcn/domob/android/ads/c;

    .line 20
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/C;->b:Lcn/domob/android/ads/c;

    return-object v0
.end method
