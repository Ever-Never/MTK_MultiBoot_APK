.class Lcn/domob/android/ads/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/z;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/z;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcn/domob/android/ads/z$a;->c:Lcn/domob/android/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "s"

    iput-object v0, p0, Lcn/domob/android/ads/z$a;->b:Ljava/lang/String;

    return-void
.end method
