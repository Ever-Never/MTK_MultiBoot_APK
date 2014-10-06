.class public final Lcom/baidu/mobads/AdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/baidu/mobads/AdSize;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/baidu/mobads/AdSize;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :try_start_0
    const-string v0, "com.baidu.mobads.AdService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "\u8bf7\u4f7f\u7528AdService\u83b7\u53d6AdView\u5b9e\u4f8b"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p1, v0}, Lcom/baidu/mobads/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_1
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p4}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/baidu/mobads/AdSize;)V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.baidu.mobads.remote.AdView"

    invoke-static {p0, v1}, Lcom/baidu/mobads/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AdView.getInstance"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p0, v0}, Lcom/baidu/mobads/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "removeInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AdView.removeInstance"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAppSec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p0, v0}, Lcom/baidu/mobads/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setAppSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AdView.setAppSec"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAppSid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p0, v0}, Lcom/baidu/mobads/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setAppSid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AdView.setAppSid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setAlpha"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AdView.setAlpha"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setListener(Lcom/baidu/mobads/AdViewListener;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AdView.setListener"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler$Callback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/baidu/mobads/a;

    invoke-direct {v4, p1, p0}, Lcom/baidu/mobads/a;-><init>(Lcom/baidu/mobads/AdViewListener;Lcom/baidu/mobads/AdView;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
