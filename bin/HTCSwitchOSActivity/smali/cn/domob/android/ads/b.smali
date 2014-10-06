.class abstract Lcn/domob/android/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/b$a;
    }
.end annotation


# static fields
.field private static f:Lcn/domob/android/ads/J;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcn/domob/android/ads/c;

.field protected c:Lcn/domob/android/ads/c;

.field protected d:Lcn/domob/android/ads/y$a;

.field protected e:Lcn/domob/android/ads/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/J;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v0}, Lcn/domob/android/ads/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract a()Lcn/domob/android/ads/c;
.end method

.method protected a(Lcn/domob/android/ads/b$a;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/b$a;

    .line 42
    return-void
.end method

.method protected abstract b()Lcn/domob/android/ads/c;
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/J;

    const-string v1, "Destroy WebViews."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/domob/android/ads/b;->b:Lcn/domob/android/ads/c;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/b;->b:Lcn/domob/android/ads/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->destroy()V

    .line 49
    iput-object v2, p0, Lcn/domob/android/ads/b;->b:Lcn/domob/android/ads/c;

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/b;->c:Lcn/domob/android/ads/c;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/b;->c:Lcn/domob/android/ads/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->destroy()V

    .line 54
    iput-object v2, p0, Lcn/domob/android/ads/b;->c:Lcn/domob/android/ads/c;

    .line 56
    :cond_1
    return-void
.end method
