.class abstract Lcn/domob/android/ads/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/Z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/Z;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 10
    if-eqz p1, :cond_0

    const-string v0, "[^a-zA-Z0-9_,:\\s\\{\\}\\\'\\\"]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    invoke-virtual {p0}, Lcn/domob/android/ads/Z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v1, Lcn/domob/android/ads/Z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRAID property:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 17
    return-object v0
.end method
