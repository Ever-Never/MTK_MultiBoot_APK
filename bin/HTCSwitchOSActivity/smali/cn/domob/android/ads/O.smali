.class Lcn/domob/android/ads/O;
.super Lcn/domob/android/ads/L;
.source "SourceFile"


# static fields
.field private static c:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/O;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/O;->c:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/ac;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/L;-><init>(Ljava/util/Map;Lcn/domob/android/ads/ac;)V

    .line 100
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/O;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget-object v2, Lcn/domob/android/ads/O;->c:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open MRAID browser with URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 108
    :try_start_0
    iget-object v2, p0, Lcn/domob/android/ads/O;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v2}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/O;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 111
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    :cond_1
    new-instance v0, Lcn/domob/android/ads/x;

    iget-object v2, p0, Lcn/domob/android/ads/O;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v2}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/android/ads/O;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v4}, Lcn/domob/android/ads/ac;->k()Lcn/domob/android/ads/x$b;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcn/domob/android/ads/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/x$b;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/x;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 117
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/O;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->j()Lcn/domob/android/ads/ac$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/O;->b:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->j()Lcn/domob/android/ads/ac$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/ac$a;->a()V

    .line 123
    :cond_2
    :goto_1
    return-void

    .line 116
    :cond_3
    sget-object v0, Lcn/domob/android/ads/O;->c:Lcn/domob/android/ads/J;

    const-string v1, "can not build with activity finishing"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcn/domob/android/ads/O;->c:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
