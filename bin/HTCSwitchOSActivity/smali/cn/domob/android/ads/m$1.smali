.class Lcn/domob/android/ads/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/y$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/m;->a(Lcn/domob/android/ads/l$b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/m;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/m;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcn/domob/android/ads/m$1;->a:Lcn/domob/android/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/m$1;->a:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->d()V

    .line 70
    iget-object v0, p0, Lcn/domob/android/ads/m$1;->a:Lcn/domob/android/ads/m;

    iget-object v0, v0, Lcn/domob/android/ads/m;->e:Lcn/domob/android/ads/b$a;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/m$1;->a:Lcn/domob/android/ads/m;

    iget-object v0, v0, Lcn/domob/android/ads/m;->e:Lcn/domob/android/ads/b$a;

    invoke-interface {v0}, Lcn/domob/android/ads/b$a;->b()V

    .line 73
    :cond_0
    return-void
.end method
