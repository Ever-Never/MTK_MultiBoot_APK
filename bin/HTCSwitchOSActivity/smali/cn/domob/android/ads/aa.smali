.class Lcn/domob/android/ads/aa;
.super Lcn/domob/android/ads/Z;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/domob/android/ads/Z;-><init>()V

    .line 45
    iput p1, p0, Lcn/domob/android/ads/aa;->a:I

    .line 46
    iput p2, p0, Lcn/domob/android/ads/aa;->b:I

    .line 47
    return-void
.end method

.method public static a(II)Lcn/domob/android/ads/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcn/domob/android/ads/aa;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/aa;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenSize: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/ads/aa;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/ads/aa;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
