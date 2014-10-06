.class public Lcom/adsmogo/adview/ShowInfoDialog;
.super Landroid/app/ProgressDialog;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Landroid/graphics/drawable/GradientDrawable;

.field private K:Landroid/graphics/drawable/GradientDrawable;

.field private L:Landroid/graphics/drawable/GradientDrawable;

.field private M:Landroid/view/WindowManager$LayoutParams;

.field private N:Lcom/adsmogo/util/o;

.field private O:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/adsmogo/adview/AdsMogoLayout;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 1

    invoke-direct {p0, p4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/adsmogo/util/o;

    invoke-direct {v0}, Lcom/adsmogo/util/o;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->N:Lcom/adsmogo/util/o;

    iput-object p11, p0, Lcom/adsmogo/adview/ShowInfoDialog;->O:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iput p1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->H:I

    iput-object p2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->I:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object p4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->b:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->e:Ljava/util/List;

    iput-object p9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->f:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->g:Z

    return-void
.end method

.method private a(III)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x40a0

    const/4 v9, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    sub-int v8, p2, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v7, -0x100

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v5, v10, v10, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v6, v10, v10, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "/com/adsmogo/assets/adsmogo_fill_bgw.png"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "/com/adsmogo/assets/adsmogo_fill_bgb.png"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {v6, p1, p2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    sub-int v8, p2, v8

    invoke-static {v5, v7, v8, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v6, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v5, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private a()V
    .locals 12

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->E:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->q:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->p:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    iget v5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->s:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->i:I

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->r:I

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->m:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->F:I

    const/4 v10, 0x5

    invoke-direct {p0, v8, v9, v10}, Lcom/adsmogo/adview/ShowInfoDialog;->a(III)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v11, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->J:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->K:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->c:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x33

    const/16 v10, 0x33

    const/16 v11, 0x33

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x4190

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->v:I

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, -0x777778

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x4170

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v8, v8, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v8}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    const/high16 v8, 0x3f80

    const v9, 0x3f8ccccd

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->A:I

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v8, -0x1

    invoke-direct {v1, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->v:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->y:I

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/widget/HorizontalScrollView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->L:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->w:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->n:I

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u4e0b   \u8f7d"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/adsmogo/adview/D;

    invoke-direct {v4, p0}, Lcom/adsmogo/adview/D;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/widget/Button;

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v8, "\u53d6   \u6d88"

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x4190

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/adsmogo/adview/E;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/E;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6, v2}, Lcom/adsmogo/adview/ShowInfoDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->F:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_2
    new-instance v10, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit16 v0, v1, 0x3e8

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setId(I)V

    const v0, -0x777778

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit16 v11, v1, 0x3e8

    invoke-direct {p0, v0, v11}, Lcom/adsmogo/adview/ShowInfoDialog;->a(Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/adview/ShowInfoDialog;)V
    .locals 5

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->dismiss()V

    iget v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->H:I

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->downloadAPK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->N:Lcom/adsmogo/util/o;

    new-instance v1, Lcom/adsmogo/adview/H;

    invoke-direct {v1, p0, p2}, Lcom/adsmogo/adview/H;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;I)V

    invoke-virtual {v0, p1, v1}, Lcom/adsmogo/util/o;->a(Ljava/lang/String;Lcom/adsmogo/util/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/adsmogo/adview/ShowInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adview/ShowInfoDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->O:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    return-object v0
.end method

.method private b()V
    .locals 12

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->C:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->E:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->q:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->p:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    iget v5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->t:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->z:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->G:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->C:I

    const/4 v10, 0x5

    invoke-direct {p0, v8, v9, v10}, Lcom/adsmogo/adview/ShowInfoDialog;->a(III)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v11, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->J:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->K:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->c:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x33

    const/16 v10, 0x33

    const/16 v11, 0x33

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x4190

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x4170

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    const/high16 v3, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v1, v3, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    const/high16 v3, 0x3f80

    const v8, 0x3f8ccccd

    invoke-virtual {v1, v3, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->L:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->C:I

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v8, -0x1

    invoke-direct {v1, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->u:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->x:I

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/widget/HorizontalScrollView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->B:I

    const/4 v4, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->w:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->n:I

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/Button;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v9, "\u4e0b   \u8f7d"

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x4190

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/adsmogo/adview/F;

    invoke-direct {v9, p0}, Lcom/adsmogo/adview/F;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v9, Landroid/widget/Button;

    iget-object v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v10, "\u53d6   \u6d88"

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x4190

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/adsmogo/adview/G;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/G;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6, v2}, Lcom/adsmogo/adview/ShowInfoDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->G:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_2
    new-instance v10, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit16 v0, v1, 0x3e8

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setId(I)V

    const v0, -0x777778

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit16 v11, v1, 0x3e8

    invoke-direct {p0, v0, v11}, Lcom/adsmogo/adview/ShowInfoDialog;->a(Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->dismiss()V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->c()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->O:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->O:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getAdsMogoCore()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->O:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adsmogo/adview/ShowInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, -0x1

    const/4 v12, 0x0

    const/16 v11, 0x92

    const/16 v10, 0x91

    const/16 v9, 0x8f

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->i:I

    const/high16 v1, 0x4040

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    const/high16 v1, 0x4120

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    const/high16 v1, 0x4188

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->m:I

    const/high16 v1, 0x4234

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->n:I

    const/high16 v1, 0x4210

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    const/high16 v1, 0x424c

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->p:I

    const/high16 v1, 0x4250

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->q:I

    const/high16 v1, 0x4254

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->r:I

    const/high16 v1, 0x4270

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->s:I

    const/high16 v1, 0x4284

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->t:I

    const/high16 v1, 0x42b4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->u:I

    const/high16 v1, 0x42d0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->v:I

    const/high16 v1, 0x4304

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->w:I

    const/high16 v1, 0x4307

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->x:I

    const/high16 v1, 0x4316

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->B:I

    const/high16 v1, 0x431c

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->y:I

    const/high16 v1, 0x4320

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->z:I

    const/high16 v1, 0x433a

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->A:I

    const/high16 v1, 0x4396

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->C:I

    const/high16 v1, 0x43a0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    const/high16 v1, 0x43d2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->E:I

    const/high16 v1, 0x43e6

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->F:I

    const/high16 v1, 0x43f0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->G:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/adsmogo_dialog_bg.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/adsmogo_close_h.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/16 v5, 0xfe

    const/16 v6, 0xfe

    const/16 v7, 0xfe

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v4, v12

    const/4 v5, 0x1

    const/16 v6, 0xd6

    const/16 v7, 0xd6

    const/16 v8, 0xd6

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->J:Landroid/graphics/drawable/GradientDrawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/16 v5, 0xc9

    const/16 v6, 0xc9

    const/16 v7, 0xc9

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v4, v12

    const/4 v5, 0x1

    const/16 v6, 0xe4

    const/16 v7, 0xe4

    const/16 v8, 0xe4

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->K:Landroid/graphics/drawable/GradientDrawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v4, 0x10

    new-array v4, v4, [I

    const/16 v5, 0x7e

    const/16 v6, 0x80

    const/16 v7, 0x80

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v4, v12

    const/4 v5, 0x1

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x6

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0x8

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0xa

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0xb

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0xc

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0xd

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0xe

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x7e

    const/16 v7, 0x80

    const/16 v8, 0x80

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->L:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->g:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->b()V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/adsmogo_close.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "image stream exception"

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->a()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->C:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->M:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    iget v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->k:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->q:I

    invoke-direct {v0, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    invoke-direct {v2, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->p:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    iget v5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->o:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/adsmogo/adview/ShowInfoDialog;->z:I

    invoke-direct {v4, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x3

    const/16 v6, 0x5233

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->s:I

    invoke-direct {v5, v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v6, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->r:I

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->m:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    invoke-virtual {v6, v12, v12, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->D:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->C:I

    const/4 v10, 0x5

    invoke-direct {p0, v8, v9, v10}, Lcom/adsmogo/adview/ShowInfoDialog;->a(III)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v10, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    iget v11, p0, Lcom/adsmogo/adview/ShowInfoDialog;->j:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->J:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->K:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x5233

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/adsmogo/adview/ShowInfoDialog;->c:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x33

    const/16 v10, 0x33

    const/16 v11, 0x33

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x4190

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v3, 0x3f80

    const/high16 v8, 0x3fc0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    iget v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->l:I

    invoke-virtual {v2, v3, v12, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/adsmogo/adview/ShowInfoDialog;->w:I

    iget v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->n:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u4e0b   \u8f7d"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/adsmogo/adview/B;

    invoke-direct {v4, p0}, Lcom/adsmogo/adview/B;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/widget/Button;

    iget-object v8, p0, Lcom/adsmogo/adview/ShowInfoDialog;->a:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v8, "\u53d6   \u6d88"

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x4190

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/adsmogo/adview/C;

    invoke-direct {v2, p0}, Lcom/adsmogo/adview/C;-><init>(Lcom/adsmogo/adview/ShowInfoDialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6, v1}, Lcom/adsmogo/adview/ShowInfoDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->c()V

    :cond_0
    return v1
.end method

.method protected onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowInfoDialog;->cancel()V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowInfoDialog;->h:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->c()V

    return-void
.end method
