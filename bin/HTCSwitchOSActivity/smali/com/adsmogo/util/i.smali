.class final Lcom/adsmogo/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/util/f;


# direct methods
.method private constructor <init>(Lcom/adsmogo/util/f;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/util/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/util/i;-><init>(Lcom/adsmogo/util/f;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v0, v0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v1, v1, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v3, v3, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget-object v3, v3, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v0, v0, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->SDKversion:I

    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v0, v0, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->version:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    new-instance v1, Lcom/adsmogo/model/obj/Update;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/Update;-><init>()V

    iput-object v1, v0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v0, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v0, v0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v1, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v1, v1, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget-object v1, v1, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Update;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v0, v0, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v1, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v1, v1, Lcom/adsmogo/util/f;->c:Lcom/adsmogo/model/obj/Extra;

    iget v1, v1, Lcom/adsmogo/model/obj/Extra;->version:I

    iput v1, v0, Lcom/adsmogo/model/obj/Update;->versionCode:I

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {}, Lcom/adsmogo/util/f;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    iget-object v4, v4, Lcom/adsmogo/util/f;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v2, "updata StatusCode 200"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    invoke-static {v1, v0}, Lcom/adsmogo/util/f;->a(Lcom/adsmogo/util/f;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "updata return null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/util/i;->a:Lcom/adsmogo/util/f;

    invoke-static {v1, v0}, Lcom/adsmogo/util/f;->a(Lcom/adsmogo/util/f;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Caught ClientProtocolException in update()"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "AdsMOGO SDK"

    const-string v1, "updata StatusCode not 200"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "AdsMOGO SDK"

    const-string v1, "update not conform  conditions"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
