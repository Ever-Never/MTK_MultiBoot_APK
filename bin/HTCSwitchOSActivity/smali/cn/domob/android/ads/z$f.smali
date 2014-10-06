.class Lcn/domob/android/ads/z$f;
.super Lcn/domob/android/ads/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:J

.field final synthetic j:Lcn/domob/android/ads/z;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/z;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcn/domob/android/ads/z$f;->j:Lcn/domob/android/ads/z;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/z$a;-><init>(Lcn/domob/android/ads/z;)V

    .line 103
    const-string v0, "s"

    iput-object v0, p0, Lcn/domob/android/ads/z$f;->h:Ljava/lang/String;

    return-void
.end method
