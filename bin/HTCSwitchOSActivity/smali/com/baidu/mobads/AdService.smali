.class public Lcom/baidu/mobads/AdService;
.super Ljava/lang/Object;


# static fields
.field protected static instanceCount:I


# instance fields
.field private final a:Lcom/baidu/mobads/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/baidu/mobads/AdService;->instanceCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/baidu/mobads/AdViewListener;)V
    .locals 6

    sget-object v5, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/AdService;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/baidu/mobads/AdViewListener;Lcom/baidu/mobads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/baidu/mobads/AdViewListener;Lcom/baidu/mobads/AdSize;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobads/a/a;->e:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of arguments is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/baidu/mobads/AdView;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcom/baidu/mobads/AdView;->a(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/baidu/mobads/AdView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p5}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;)V

    iput-object v0, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    iget-object v0, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0, p4}, Lcom/baidu/mobads/AdView;->setListener(Lcom/baidu/mobads/AdViewListener;)V

    invoke-direct {p0, p2, p3}, Lcom/baidu/mobads/AdService;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/baidu/mobads/AdService;->instanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/mobads/AdService;->instanceCount:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/AdService;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
