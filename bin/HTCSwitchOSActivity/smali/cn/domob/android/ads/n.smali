.class Lcn/domob/android/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/n$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "url"

.field private static final f:Ljava/lang/String; = "failsafe"

.field private static final g:Ljava/lang/String; = "pkg"

.field private static final h:Ljava/lang/String; = "activity"

.field private static final i:Ljava/lang/String; = "param"


# instance fields
.field a:Lcn/domob/android/ads/J;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;

.field private d:Lcn/domob/android/ads/n$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/n$a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    .line 39
    iput-object p1, p0, Lcn/domob/android/ads/n;->b:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcn/domob/android/ads/n;->c:Landroid/net/Uri;

    .line 41
    iput-object p3, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    .line 42
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x1000

    .line 82
    const/4 v2, 0x0

    .line 83
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    const-string v1, "param"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/high16 v0, 0x1000

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryParams : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 119
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    array-length v4, v2

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v2, v0

    .line 121
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 122
    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 95
    :goto_2
    iget-object v2, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    const-string v4, "Error happened in decoding launchURL"

    invoke-virtual {v2, v4}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :cond_1
    if-eqz v4, :cond_3

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    if-eqz v5, :cond_2

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    const-string v1, "Activity is not null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    const-string v1, "Activity is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    const-string v1, "Package name is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 126
    :cond_4
    return-object v1

    .line 94
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/n;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/n;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Action intent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/n;->c:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->G()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/n;->c:Landroid/net/Uri;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 68
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup action ----- Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    invoke-interface {v1, v0}, Lcn/domob/android/ads/n$a;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcn/domob/android/ads/n;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/n;->d:Lcn/domob/android/ads/n$a;

    invoke-interface {v0}, Lcn/domob/android/ads/n$a;->F()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    iget-object v1, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    const-string v2, "Invalid failsafe URL."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcn/domob/android/ads/n;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
