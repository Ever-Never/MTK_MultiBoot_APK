.class public Lcom/adsmogo/util/AdsMogoScreenCalc;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static b:I

.field private static c:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->b:I

    const-wide/high16 v0, -0x4010

    sput-wide v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->c:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToScreenPixels(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    mul-double/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method public static convertToScreenPixels(ID)I
    .locals 2

    int-to-double v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getDensity(Landroid/app/Activity;)D
    .locals 6

    const-wide/high16 v4, 0x3ff0

    sget-wide v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->c:D

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->c:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-wide v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->c:D

    return-wide v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    sput-wide v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->c:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "get density error"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-wide v4, Lcom/adsmogo/util/AdsMogoScreenCalc;->c:D

    goto :goto_0
.end method

.method public static getPngSize(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->b:I

    :goto_0
    sget v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->b:I

    return v0

    :cond_0
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    const/4 v0, 0x2

    sput v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->b:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    sput v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->b:I

    goto :goto_0
.end method

.method public static getScreenIsHorizontal(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWidthAndHeight(Landroid/content/Context;)[I
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v0, v1, :cond_0

    new-array v2, v2, [I

    aput v1, v2, v3

    aput v0, v2, v4

    sput-object v2, Lcom/adsmogo/util/AdsMogoScreenCalc;->a:[I

    :goto_0
    sget-object v0, Lcom/adsmogo/util/AdsMogoScreenCalc;->a:[I

    return-object v0

    :cond_0
    new-array v2, v2, [I

    aput v0, v2, v3

    aput v1, v2, v4

    sput-object v2, Lcom/adsmogo/util/AdsMogoScreenCalc;->a:[I

    goto :goto_0
.end method
