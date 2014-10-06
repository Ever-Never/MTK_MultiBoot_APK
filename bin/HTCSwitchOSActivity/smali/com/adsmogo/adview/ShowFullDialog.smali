.class public Lcom/adsmogo/adview/ShowFullDialog;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Dialog;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/TextView;

.field d:Ljava/util/Timer;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    new-instance v0, Lcom/adsmogo/adview/q;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/q;-><init>(Lcom/adsmogo/adview/ShowFullDialog;)V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowFullDialog;->getDialogIsOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public getDialogIsOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClickDialog(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    const v2, 0x103000a

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Lcom/adsmogo/util/j;

    invoke-direct {v3}, Lcom/adsmogo/util/j;-><init>()V

    new-instance v4, Lcom/adsmogo/adview/u;

    invoke-direct {v4, p0, v2, v1}, Lcom/adsmogo/adview/u;-><init>(Lcom/adsmogo/adview/ShowFullDialog;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    invoke-virtual {v3, p1, v4}, Lcom/adsmogo/util/j;->a(Ljava/lang/String;Lcom/adsmogo/util/n;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showFullAdDialog(Ljava/lang/String;Ljava/lang/String;Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    const v3, 0x103000a

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/adsmogo/adview/r;

    invoke-direct {v0, p0, p3}, Lcom/adsmogo/adview/r;-><init>(Lcom/adsmogo/adview/ShowFullDialog;Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v6, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    const/16 v4, 0x7f

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    const-string v4, "\u5e7f\u544a\u5269\u4f590\u79d2"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x14

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v4, 0xa

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/adsmogo/adview/ShowFullDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getPngSize(Landroid/app/Activity;)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "/com/admogo/assets/adsmogo_ad_close_h.png"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v8, v6, v8, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v0, Lcom/adsmogo/adview/s;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/s;-><init>(Lcom/adsmogo/adview/ShowFullDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x3

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0xf

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v5, 0xf

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/adsmogo/util/j;

    invoke-direct {v0}, Lcom/adsmogo/util/j;-><init>()V

    new-instance v1, Lcom/adsmogo/adview/t;

    invoke-direct {v1, p0, v3, v2, p3}, Lcom/adsmogo/adview/t;-><init>(Lcom/adsmogo/adview/ShowFullDialog;Landroid/widget/ImageView;ILcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/adsmogo/util/j;->a(Ljava/lang/String;Lcom/adsmogo/util/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullDialog;->d:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/adview/v;

    invoke-direct {v1, p0, v2}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/ShowFullDialog;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "/com/admogo/assets/adsmogo_ad_close.png"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
