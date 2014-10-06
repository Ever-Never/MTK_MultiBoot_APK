.class Lcn/domob/android/ads/H;
.super Lcn/domob/android/ads/c;
.source "SourceFile"


# static fields
.field private static e:Lcn/domob/android/ads/J;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/H;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/H;->e:Lcn/domob/android/ads/J;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V

    .line 12
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p3}, Lcn/domob/android/ads/c;-><init>(Landroid/content/Context;I)V

    .line 16
    sget-object v0, Lcn/domob/android/ads/H;->e:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate DomobWebView with ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcn/domob/android/ads/H;->f:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcn/domob/android/ads/H;->c:Lcn/domob/android/ads/b;

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/H;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/F;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "domob.js"

    aput-object v3, v1, v2

    .line 33
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/domob/android/ads/H;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23
    const-string v0, "NO_ID"

    iput-object v0, p0, Lcn/domob/android/ads/H;->f:Ljava/lang/String;

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/H;->f:Ljava/lang/String;

    return-object v0
.end method
