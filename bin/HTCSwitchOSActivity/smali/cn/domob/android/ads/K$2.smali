.class Lcn/domob/android/ads/K$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/ac$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/K;->a()Lcn/domob/android/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/K;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/K;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcn/domob/android/ads/K$2;->a:Lcn/domob/android/ads/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/ac;Lcn/domob/android/ads/ac$l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/K$2;->a:Lcn/domob/android/ads/K;

    iget-object v0, v0, Lcn/domob/android/ads/K;->e:Lcn/domob/android/ads/b$a;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/domob/android/ads/K$2;->a:Lcn/domob/android/ads/K;

    iget-object v0, v0, Lcn/domob/android/ads/K;->e:Lcn/domob/android/ads/b$a;

    invoke-interface {v0}, Lcn/domob/android/ads/b$a;->b()V

    .line 34
    :cond_0
    return-void
.end method
