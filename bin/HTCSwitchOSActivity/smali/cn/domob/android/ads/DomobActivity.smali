.class public Lcn/domob/android/ads/DomobActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_TYPE:Ljava/lang/String; = "DomobActivityType"

.field public static final EXPAND_BASE_URL:Ljava/lang/String; = "ex_base_url"

.field public static final EXPAND_CONTENT:Ljava/lang/String; = "ex_content"

.field public static final EXPAND_URL:Ljava/lang/String; = "ex_url"

.field public static final NOTICE_MESSAGE:Ljava/lang/String; = "msg"

.field public static final TYPE_DOWNLOADER:I = 0x2

.field public static final TYPE_EXPAND:I = 0x4

.field public static final TYPE_INSTALL_RECEIVER:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NOTICE:I = 0x3

.field public static final TYPE_UPLOAD_PIC:I = 0x5

.field private static a:Lcn/domob/android/ads/J; = null

.field private static final b:I = 0x929

.field private static final c:I = 0x92a

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static final g:I = 0x0

.field private static final h:I = 0x1


# instance fields
.field private f:Landroid/os/Handler;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DomobUploadImgPath/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/DomobActivity;->d:Ljava/lang/String;

    .line 52
    const-string v0, "up"

    sput-object v0, Lcn/domob/android/ads/DomobActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object p0, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/DomobActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 312
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/DomobActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 314
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 316
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/DomobActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/DomobActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->j()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/DomobActivity;->j:Ljava/lang/String;

    .line 104
    const-string v2, "actType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const-string v2, "typeCancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u662f\u5426\u53d6\u6d88?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$2;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$1;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/DomobActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->h()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$3;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 147
    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/DomobActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcn/domob/android/ads/DomobActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 150
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v1, "Reload expandable part in DomobActivity."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcn/domob/android/ads/H;

    iget-object v1, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v7}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 156
    const-string v1, "ex_url"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v1, "ex_base_url"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v4, "ex_content"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 161
    sget-object v3, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v4, "Reload EX with url=%s and data=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v2, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 162
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/H;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    const v3, 0x1030010

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 173
    new-instance v2, Lcn/domob/android/ads/DomobActivity$4;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/DomobActivity$4;-><init>(Lcn/domob/android/ads/DomobActivity;Lcn/domob/android/ads/H;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 163
    :cond_1
    if-eqz v3, :cond_2

    .line 164
    sget-object v1, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v2, "Reload EX with url=%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v3}, Lcn/domob/android/ads/H;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v1, "Failed to load Expandable without URL or BASE URL and CONTENT."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->finish()V

    goto :goto_1
.end method

.method static synthetic g(Lcn/domob/android/ads/DomobActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->k:Landroid/net/Uri;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcn/domob/android/ads/DomobActivity$5;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobActivity$5;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobActivity;->f:Landroid/os/Handler;

    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9009\u62e9\u4e0a\u4f20\u56fe\u7247\u7684\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ece\u5df2\u6709\u76f8\u518c\u4e2d\u9009\u62e9"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$7;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$7;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7167\u76f8\u83b7\u5f97\u56fe\u7247"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$6;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$6;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 224
    return-void
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/domob/android/ads/DomobActivity;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/domob/android/ads/DomobActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/domob/android/ads/DomobActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 239
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    const/16 v0, 0x929

    invoke-virtual {p0, v1, v0}, Lcn/domob/android/ads/DomobActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    const/16 v0, 0x92a

    invoke-virtual {p0, v1, v0}, Lcn/domob/android/ads/DomobActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/domob/android/ads/DomobActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/domob/android/ads/DomobActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 326
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/domob/android/ads/DomobActivity;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 330
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 266
    :pswitch_0
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v1, "update the pic taken"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcn/domob/android/ads/DomobActivity$8;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobActivity$8;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobActivity$8;->start()V

    goto :goto_0

    .line 280
    :pswitch_1
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v1, "update the pic selected"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 281
    if-nez p3, :cond_0

    .line 282
    sget-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/ads/J;

    const-string v1, "album select url is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobActivity;->k:Landroid/net/Uri;

    .line 286
    new-instance v0, Lcn/domob/android/ads/DomobActivity$9;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobActivity$9;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobActivity$9;->start()V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x929
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    const-string v1, "DomobActivityType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->d()V

    goto :goto_0

    .line 75
    :pswitch_1
    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobActivity;->setTheme(I)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->e()V

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->f()V

    goto :goto_0

    .line 88
    :pswitch_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->g()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
