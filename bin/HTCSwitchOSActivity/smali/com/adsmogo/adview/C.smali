.class final Lcom/adsmogo/adview/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowInfoDialog;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/C;->a:Lcom/adsmogo/adview/ShowInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/C;->a:Lcom/adsmogo/adview/ShowInfoDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowInfoDialog;->c(Lcom/adsmogo/adview/ShowInfoDialog;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
