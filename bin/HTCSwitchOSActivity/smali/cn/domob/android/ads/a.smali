.class public Lcn/domob/android/ads/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a$b;,
        Lcn/domob/android/ads/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10

.field static final synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/domob/android/ads/a;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/domob/android/ads/a;->b([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a([BIII)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 147
    new-instance v3, Lcn/domob/android/ads/a$b;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcn/domob/android/ads/a$b;-><init>(I[B)V

    .line 150
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 153
    iget-boolean v1, v3, Lcn/domob/android/ads/a$b;->e:Z

    if-eqz v1, :cond_2

    .line 154
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    .line 155
    add-int/lit8 v0, v0, 0x4

    .line 166
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v3, Lcn/domob/android/ads/a$b;->f:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    .line 167
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, Lcn/domob/android/ads/a$b;->g:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 171
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v3, Lcn/domob/android/ads/a$b;->a:[B

    .line 172
    invoke-virtual {v3, p0, p1, p2, v2}, Lcn/domob/android/ads/a$b;->a([BIIZ)Z

    .line 174
    sget-boolean v1, Lcn/domob/android/ads/a;->g:Z

    if-nez v1, :cond_4

    iget v1, v3, Lcn/domob/android/ads/a$b;->b:I

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_2
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 161
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 167
    goto :goto_1

    .line 176
    :cond_4
    iget-object v0, v3, Lcn/domob/android/ads/a$b;->a:[B

    return-object v0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b([BI)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcn/domob/android/ads/a;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method
