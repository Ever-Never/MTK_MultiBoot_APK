.class Lcn/domob/android/ads/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/l;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/l;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcn/domob/android/ads/l$c;->a:Lcn/domob/android/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    if-eqz p2, :cond_0

    .line 523
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/l$c;->b:I

    .line 524
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/l$c;->c:Ljava/lang/String;

    .line 526
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcn/domob/android/ads/l$c;->b:I

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcn/domob/android/ads/l$c;->c:Ljava/lang/String;

    return-object v0
.end method
