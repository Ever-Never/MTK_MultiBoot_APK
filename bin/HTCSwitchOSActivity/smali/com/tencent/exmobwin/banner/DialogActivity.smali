.class public Lcom/tencent/exmobwin/banner/DialogActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "DialogActivity"

.field private static final b:Ljava/lang/String; = "com.tencent.mobwin.DialogActivity"


# instance fields
.field private c:Ljava/lang/Class;

.field private d:Ljava/lang/Object;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/tencent/exmobwin/banner/b;

    invoke-direct {v0, p0}, Lcom/tencent/exmobwin/banner/b;-><init>(Lcom/tencent/exmobwin/banner/DialogActivity;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const-string v0, "DialogActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const-string v0, "DialogActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EFFECTIVE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :try_start_0
    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/exmobwin/banner/a;->c()V

    sget-object v1, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexClassLoader;

    const-string v3, "com.tencent.mobwin.DialogActivity"

    invoke-virtual {v1, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const-string v3, "setParams"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v3, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p0, v4, v0

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->e:Landroid/os/Handler;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v0, "DialogActivity"

    const-string v1, "browserObj is null"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "DialogActivity"

    const-string v1, "loader is null"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "DialogActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/DialogActivity;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const-string v2, "onKeyDown"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "DialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keycode :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyevent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const-string v2, "onKeyUp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DialogActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/DialogActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "DialogActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "onRestart"

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/DialogActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "DialogActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/DialogActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "DialogActivity"

    const-string v1, "onSaveInstanceState out browser~"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->c:Ljava/lang/Class;

    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/DialogActivity;->d:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "DialogActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/DialogActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "DialogActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/DialogActivity;->a(Ljava/lang/String;)V

    return-void
.end method
