.class public final Lcom/adsmogo/adview/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/view/ViewGroup;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/view/ViewGroup;I)V
    .locals 1

    const/4 v0, -0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/adsmogo/adview/g;->c:I

    iput v0, p0, Lcom/adsmogo/adview/g;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/g;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/adsmogo/adview/g;->b:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/adsmogo/adview/g;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/view/ViewGroup;III)V
    .locals 1

    const/4 v0, -0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/adsmogo/adview/g;->c:I

    iput v0, p0, Lcom/adsmogo/adview/g;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/g;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/adsmogo/adview/g;->b:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/adsmogo/adview/g;->c:I

    iput p5, p0, Lcom/adsmogo/adview/g;->d:I

    iput p3, p0, Lcom/adsmogo/adview/g;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adview/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->b()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/g;->b:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/adsmogo/adview/g;->e:I

    iget v2, p0, Lcom/adsmogo/adview/g;->c:I

    iget v3, p0, Lcom/adsmogo/adview/g;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/view/ViewGroup;II)V

    :cond_0
    return-void
.end method
