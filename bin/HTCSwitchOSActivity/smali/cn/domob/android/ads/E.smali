.class Lcn/domob/android/ads/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/E$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "domob_update_info"

.field static final b:Ljava/lang/String; = "ipb"

.field static final c:Ljava/lang/String; = "info_md5"

.field static final d:Ljava/lang/String; = "n"

.field static final e:Ljava/lang/String; = "nt"

.field static final f:Ljava/lang/String; = "vc"

.field static final g:Ljava/lang/String; = "vn"

.field static final h:Ljava/lang/String; = "u"

.field static final i:Ljava/lang/String; = "s"

.field static final j:Ljava/lang/String; = "md5"

.field static final k:Ljava/lang/String; = "ul"

.field static final l:Ljava/lang/String; = "f"

.field static final m:Ljava/lang/String; = "sk"

.field static final n:Ljava/lang/String; = "nrt"

.field static final o:Ljava/lang/String; = "nri"

.field static final p:Ljava/lang/String; = "next_time"

.field static final q:Ljava/lang/String; = "skip_vc"

.field static final r:I = 0x0

.field static final s:I = 0x1

.field static final t:I = 0x2

.field static final u:I = 0x0

.field static final v:I = 0x1

.field static final w:I = 0x3

.field private static x:Lcn/domob/android/ads/J;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcn/domob/android/ads/i;

.field private y:Landroid/content/Context;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/E;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    .line 107
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 239
    const-string v3, "md5"

    const-string v4, ""

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    const-string v4, "f"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 241
    const-string v5, "sk"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 243
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 244
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 245
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 247
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    const/16 v8, 0x5a

    const/16 v9, 0x5a

    const/16 v10, 0x5a

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 252
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 253
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 254
    const/16 v9, 0xe6

    const/16 v10, 0xe6

    const/16 v11, 0xe6

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 255
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 257
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 262
    const-string v11, "\u66f4\u65b0\u63d0\u9192"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const/high16 v11, 0x41a0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 264
    const/high16 v11, -0x100

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 269
    const v13, 0x1080041

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    const/4 v14, 0x5

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 274
    const/4 v14, 0x5

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 276
    invoke-virtual {v8, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 282
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 283
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v14, 0xa

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 288
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v11

    .line 289
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v12

    .line 290
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v13

    .line 291
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v14

    .line 292
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v15

    .line 293
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u540d\u79f0\uff1a "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/E;->B:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u5927\u5c0f\uff1a "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/E;->F:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u7248\u672c\uff1a "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const-string v16, "\u63cf\u8ff0\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/E;->G:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 300
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 301
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    new-instance v11, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v11, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 313
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->b(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v10

    .line 314
    const-string v12, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    const/4 v13, 0x5

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 319
    const/4 v13, 0x5

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 320
    const/4 v13, 0x5

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 321
    new-instance v13, Lcn/domob/android/ads/E$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v3}, Lcn/domob/android/ads/E$1;-><init>(Lcn/domob/android/ads/E;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 342
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 343
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 349
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->c(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v15

    .line 352
    const-string v16, "\u6682\u65f6\u4e0d\u66f4\u65b0"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/high16 v16, 0x4170

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextSize(F)V

    .line 354
    new-instance v16, Lcn/domob/android/ads/E$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcn/domob/android/ads/E$2;-><init>(Lcn/domob/android/ads/E;Landroid/app/Dialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-static/range {p1 .. p1}, Lcn/domob/android/ads/E;->c(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v16

    .line 366
    const-string v17, "\u8df3\u8fc7\u6b64\u7248\u672c"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const/high16 v17, 0x4170

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setTextSize(F)V

    .line 368
    new-instance v17, Lcn/domob/android/ads/E$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v2}, Lcn/domob/android/ads/E$3;-><init>(Lcn/domob/android/ads/E;Landroid/app/Dialog;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    if-eqz v5, :cond_0

    .line 383
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 385
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 386
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 387
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 388
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 389
    const/high16 v5, 0x3f80

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 390
    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_0
    if-nez v4, :cond_1

    .line 394
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 396
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 397
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 398
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 399
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 400
    const/high16 v4, 0x3f80

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 401
    invoke-virtual {v14, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 406
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 407
    invoke-virtual {v3, v14, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    const/16 v4, 0x14

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 414
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 415
    const/high16 v4, 0x3f80

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 417
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-virtual {v7, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {v7, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v7, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 424
    return-object v6
.end method

.method private static a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2
    .parameter

    .prologue
    .line 428
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 429
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/E;)Lcn/domob/android/ads/i;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/E;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lcn/domob/android/ads/E;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    new-instance v0, Lcn/domob/android/ads/r;

    iget-object v1, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/E;)V

    .line 528
    invoke-virtual {v0}, Lcn/domob/android/ads/r;->i()V

    .line 529
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/SharedPreferences;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 499
    const-string v2, "next_time"

    invoke-interface {p2, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 500
    const-string v4, "skip_vc"

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 504
    sget-object v5, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-class v6, Lcn/domob/android/ads/E;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0b\u6b21\u5141\u8bb8\u63d0\u793a\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    cmp-long v5, v2, v10

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-ltz v2, :cond_2

    .line 508
    :cond_0
    sget-object v2, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-class v3, Lcn/domob/android/ads/E;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u5230\u4e86\u5141\u8bb8\u63d0\u793a\u7684\u65f6\u95f4\u95f4\u9694\uff0c\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v3, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v0

    .line 514
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 515
    :cond_1
    sget-object v2, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-class v4, Lcn/domob/android/ads/E;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7528\u6237\u6ca1\u6709\u8df3\u8fc7\u8fd9\u4e2a\u7248\u672c\uff0c\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v0

    .line 521
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v0

    .line 511
    :cond_2
    sget-object v2, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-class v3, Lcn/domob/android/ads/E;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u672a\u5230\u5141\u8bb8\u63d0\u793a\u7684\u65f6\u95f4\u95f4\u9694\uff0c\u4e0d\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v3, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v1

    goto :goto_0

    .line 518
    :cond_3
    sget-object v2, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-class v4, Lcn/domob/android/ads/E;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7528\u6237\u8df3\u8fc7\u4e86\u8fd9\u4e2a\u7248\u672c\uff0c\u4e0d\u9700\u8981\u63d0\u793a"

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 521
    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Landroid/widget/Button;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x0

    const v8, -0x777778

    const/high16 v7, 0x40a0

    const/4 v6, 0x1

    .line 435
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 437
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 438
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 439
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v5, [I

    const-string v4, "#3399ff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v9

    const-string v4, "#99bbff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 441
    invoke-virtual {v1, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 442
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 443
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v5, [I

    const-string v5, "#3399ff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v9

    const-string v5, "#99bbff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 445
    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 446
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    new-instance v3, Lcn/domob/android/ads/E$4;

    invoke-direct {v3, v2, v1}, Lcn/domob/android/ads/E$4;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/E;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/E;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/E;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcn/domob/android/ads/E;->D:I

    return v0
.end method

.method private static c(Landroid/content/Context;)Landroid/widget/Button;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const v6, -0x777778

    const/high16 v5, 0x40a0

    .line 467
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 469
    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 470
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 471
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 473
    invoke-virtual {v1, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 474
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 475
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 477
    invoke-virtual {v2, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 478
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    new-instance v3, Lcn/domob/android/ads/E$5;

    invoke-direct {v3, v2, v1}, Lcn/domob/android/ads/E$5;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    return-object v0

    .line 471
    nop

    :array_0
    .array-data 0x4
        0x44t 0x44t 0x44t 0xfft
        0x88t 0x88t 0x88t 0xfft
    .end array-data

    .line 475
    :array_1
    .array-data 0x4
        0x44t 0x44t 0x44t 0xfft
        0x88t 0x88t 0x88t 0xfft
    .end array-data
.end method

.method static synthetic d(Lcn/domob/android/ads/E;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/E;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/E;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/E;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/E;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/E;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_0
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v1, "current network is not enable, ignoring checkUpdate"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    new-instance v0, Lcn/domob/android/ads/t;

    iget-object v4, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    iget-object v5, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    invoke-direct {v0, v4, v5}, Lcn/domob/android/ads/t;-><init>(Lcn/domob/android/ads/i;Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0}, Lcn/domob/android/ads/t;->a()V

    .line 129
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v4, "\u5f00\u59cb\u68c0\u67e5\u66f4\u65b0..."

    invoke-virtual {v0, p0, v4}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    const-string v4, "domob_update_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 132
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 134
    const-string v0, "vc"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 137
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/E;->D:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_3
    :goto_1
    :try_start_2
    const-string v0, "nrt"

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    sget-object v6, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5b58\u50a8\u7684\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v6, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5b58\u50a8\u7684\u66f4\u65b0\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    packed-switch v0, :pswitch_data_0

    .line 169
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v3, "\u9ed8\u8ba4\u81ea\u7136\u5929\u6bcf\u5929\u63d0\u793a\u4e00\u6b21"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 173
    :goto_2
    iget-object v1, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    iget-object v3, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 177
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcn/domob/android/ads/E;->z:Ljava/lang/String;

    .line 178
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 179
    sget-object v3, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f53\u524d\u5df2\u5b89\u88c5\u7684\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_1

    .line 183
    sget-object v1, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v3, "Need update"

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcn/domob/android/ads/E;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget-object v1, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v3, "Need notice"

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    const-string v1, "n"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/E;->B:Ljava/lang/String;

    .line 189
    const-string v1, "vc"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    .line 190
    const-string v1, "vn"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    .line 191
    const-string v1, "u"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/E;->A:Ljava/lang/String;

    .line 192
    const-string v1, "s"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/E;->F:Ljava/lang/String;

    .line 193
    const-string v1, "ul"

    const/4 v3, 0x0

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/E;->G:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcn/domob/android/ads/E;->B:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/E;->G:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcn/domob/android/ads/E;->y:Landroid/content/Context;

    invoke-direct {p0, v1, v4}, Lcn/domob/android/ads/E;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 202
    if-nez v0, :cond_5

    .line 204
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd 00:00:00"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 206
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 207
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 208
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 209
    sget-object v2, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u6b21\u63d0\u9192\u65f6\u95f4\uff08\u5b57\u7b26\u4e32\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 211
    sget-object v2, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u6b21\u63d0\u9192\u65f6\u95f4\uff08\u65f6\u95f4\u6233\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    const-string v2, "next_time"

    invoke-interface {v5, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 223
    :goto_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    iget-object v1, p0, Lcn/domob/android/ads/E;->z:Ljava/lang/String;

    iget v2, p0, Lcn/domob/android/ads/E;->D:I

    iget-object v3, p0, Lcn/domob/android/ads/E;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-object v1, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    :try_start_3
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version code. Cannot convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/domob/android/ads/E;->C:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to int."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/E;->D:I

    goto/16 :goto_1

    .line 153
    :pswitch_0
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v3, "\u81ea\u7136\u5929\u6bcf\u5929\u63d0\u793a\u4e00\u6b21"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 154
    goto/16 :goto_2

    .line 157
    :pswitch_1
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v1, "\u6bcf\u6b21\u6253\u5f00\u90fd\u63d0\u793a"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    .line 158
    goto/16 :goto_2

    .line 160
    :pswitch_2
    const-string v0, "nri"

    const/4 v1, 0x3

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    if-ge v0, v9, :cond_4

    move v0, v3

    .line 165
    :cond_4
    sget-object v1, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u95f4\u9694\u63d0\u793a\uff0c\u65f6\u95f4\u95f4\u9694\u4e3a\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u5c0f\u65f6"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 213
    :cond_5
    if-ne v0, v2, :cond_6

    .line 215
    sget-object v0, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    const-string v1, "\u6bcf\u6b21\u6253\u5f00\u5747\u63d0\u793a"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const-string v0, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 219
    :cond_6
    sget-object v1, Lcn/domob/android/ads/E;->x:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c0f\u65f6\u540e\u63d0\u9192"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const-string v1, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-interface {v5, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 536
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 537
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    :cond_0
    return-void
.end method

.method public d(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 546
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 547
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->f(Ljava/lang/String;ILjava/lang/String;)V

    .line 549
    :cond_0
    return-void
.end method

.method public e(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 556
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 557
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    :cond_0
    return-void
.end method

.method public f(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 566
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 567
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->h(Ljava/lang/String;ILjava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method

.method public g(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 576
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 577
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 579
    :cond_0
    return-void
.end method

.method public h(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 586
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->j(Ljava/lang/String;ILjava/lang/String;)V

    .line 589
    :cond_0
    return-void
.end method

.method public i(Lcn/domob/android/ads/r;)V
    .locals 4
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    .line 596
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v2

    .line 597
    iget-object v3, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual {v3, v0, v1, v2}, Lcn/domob/android/ads/i;->k(Ljava/lang/String;ILjava/lang/String;)V

    .line 599
    :cond_0
    return-void
.end method

.method public j(Lcn/domob/android/ads/r;)V
    .locals 6
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->d()I

    move-result v2

    .line 606
    invoke-virtual {p1}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v3

    .line 610
    const/4 v4, 0x0

    .line 611
    const-string v5, ""

    .line 612
    iget-object v0, p0, Lcn/domob/android/ads/E;->H:Lcn/domob/android/ads/i;

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 614
    :cond_0
    return-void
.end method
