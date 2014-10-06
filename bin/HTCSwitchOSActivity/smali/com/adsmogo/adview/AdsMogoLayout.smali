.class public Lcom/adsmogo/adview/AdsMogoLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static i:Z

.field private static m:Z

.field private static o:Lcom/adsmogo/adview/AdsMogoLayout;


# instance fields
.field a:Lcom/adsmogo/controller/AdsMogoCore;

.field public activityReference:Ljava/lang/ref/WeakReference;

.field public adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

.field b:Lcom/adsmogo/adview/a;

.field c:Landroid/graphics/drawable/BitmapDrawable;

.field public configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private d:Landroid/view/animation/Animation;

.field public downloadIsShowDialog:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field public final handler:Landroid/os/Handler;

.field private j:Lcom/adsmogo/controller/listener/AdsMogoListener;

.field private k:Ljava/lang/Object;

.field private l:Landroid/widget/Button;

.field private n:Z

.field public final scheduler:Lcom/adsmogo/util/e;

.field public superViewReference:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    sput-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Z

    const-string v0, "AdsMogo Loaded"

    const-string v1, "Version:299"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "android.hardware.usb.Usblnterface"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isLoaded"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    iput-boolean v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    iput-boolean v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    iput-boolean v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    const-string v0, "http://www.adsmogo.com"

    const-string v1, "appid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.adsmogo.com"

    const-string v2, "express_mode"

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "You forget input appId for xml type!!"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Use inflater Must be in Activity"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "init error"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoLayout;)Lcom/adsmogo/controller/listener/AdsMogoListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "offlineFile.cfg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 8

    sget-object v0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->removeAllViews()V

    const/4 v0, 0x0

    sput-object v0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Lcom/adsmogo/adview/AdsMogoLayout;

    :cond_0
    sput-object p0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Lcom/adsmogo/adview/AdsMogoLayout;

    sget-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Welcome to use Mogo SDK 1.2.6\nYour appId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v0, Lcom/adsmogo/adview/d;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/adsmogo/adview/d;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/app/Activity;Ljava/lang/String;IZ)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoLayout;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adsmogo/util/RepeatCheck;->getInstalledApps(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "cache Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    invoke-static {}, Lcom/adsmogo/util/a;->a()V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoLayout changeAdviewState"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowFocusChangedFlag>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<windowVisibilityFlag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<adViewVisibilityFlag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<getInfoFinishFlag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<adsMogoCore>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoLayout isStop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-boolean v2, v2, Lcom/adsmogo/controller/AdsMogoCore;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-boolean v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adview/e;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/e;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->a()V

    goto :goto_0
.end method

.method public static isAllADEnable()Z
    .locals 1

    sget-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Z

    return v0
.end method

.method public static setAllADEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getInfo finish"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/f;

    invoke-direct {v1, p0, p0}, Lcom/adsmogo/adview/f;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;II)V
    .locals 7

    const v6, 0x186a1

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_2
    if-le p2, v3, :cond_7

    if-le p3, v3, :cond_7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Added subview"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    if-nez v2, :cond_6

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x7

    invoke-virtual {v2, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-le v3, v5, :cond_3

    move v1, v2

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    new-instance v2, Lcom/adsmogo/a/a;

    invoke-direct {v2}, Lcom/adsmogo/a/a;-><init>()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->transition:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/adsmogo/a/a;->a(ID)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsmogo/adview/a;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/a;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    :goto_1
    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/a;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/a;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/a;

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onCloseMogoDialog()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    const-string v1, "onCloseMogoDialog"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public clearThread()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Thread Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->a()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->b()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/adsmogo/controller/listener/AdsMogoListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    return-object v0
.end method

.method public isADEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v3, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v3}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Lcom/adsmogo/adview/AdsMogoLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_3

    cmpg-float v4, v7, v5

    if-gtz v4, :cond_3

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_3

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onCloseAd()Z

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    const-string v3, "onCloseAd"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    if-nez v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_3
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :cond_1
    :goto_4
    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    goto/16 :goto_0

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-boolean v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->b()V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_4

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setADEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAdsMogoListener(Lcom/adsmogo/controller/listener/AdsMogoListener;)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Lcom/adsmogo/controller/listener/AdsMogoListener;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->c()Lcom/adsmogo/controller/listener/AdsMogoListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->a(Lcom/adsmogo/controller/listener/AdsMogoListener;)V

    :cond_0
    return-void
.end method

.method public setAdsMogoPeelListener(Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Ljava/lang/Object;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adsmogoLayout setVisibility"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFullAD(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
