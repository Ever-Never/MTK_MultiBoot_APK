.class public Lcom/tencent/exmobwin/a/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)I
    .locals 0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    array-length v2, p0

    new-array v3, v2, [B

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    array-length v0, v3

    if-lez v0, :cond_2

    if-eqz v2, :cond_2

    aget-byte v1, v3, v1

    new-instance v0, Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/exmobwin/a/g;->a()[I

    move-result-object v2

    const/16 v4, 0x20

    invoke-static {p0, v0, v2, v4}, Lcom/tencent/exmobwin/a/h;->b([BI[II)[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x8

    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    array-length v4, v0

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/tencent/exmobwin/a/g;->a()[I

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v3, v0, v4, v5}, Lcom/tencent/exmobwin/a/h;->a([BI[II)[B

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method private static a([BI[II)[B
    .locals 12

    invoke-static {p0, p1}, Lcom/tencent/exmobwin/a/h;->a([BI)[I

    move-result-object v4

    const/4 v0, 0x0

    aget v3, v4, v0

    const/4 v0, 0x1

    aget v2, v4, v0

    const/4 v1, 0x0

    const v5, -0x61c88647

    const/4 v0, 0x0

    aget v6, p2, v0

    const/4 v0, 0x1

    aget v7, p2, v0

    const/4 v0, 0x2

    aget v8, p2, v0

    const/4 v0, 0x3

    aget v9, p2, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v0, 0x0

    aput v3, v4, v0

    const/4 v0, 0x1

    aput v2, v4, v0

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/tencent/exmobwin/a/h;->a([II)[B

    move-result-object v0

    return-object v0

    :cond_0
    add-int/2addr v1, v5

    shl-int/lit8 v10, v2, 0x4

    add-int/2addr v10, v6

    add-int v11, v2, v1

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x5

    add-int/2addr v11, v7

    xor-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v8

    add-int v11, v3, v1

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v3, 0x5

    add-int/2addr v11, v9

    xor-int/2addr v10, v11

    add-int/2addr v2, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([II)[B
    .locals 4

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, p1, 0x3

    aget v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0x2

    aget v3, p0, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v0

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    aget v2, p0, v0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0
.end method

.method private static a([BI)[I
    .locals 4

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/tencent/exmobwin/a/h;->a(B)I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/tencent/exmobwin/a/h;->a(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/tencent/exmobwin/a/h;->a(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    array-length v2, p0

    add-int/2addr v2, v0

    new-array v3, v2, [B

    int-to-byte v2, v0

    aput-byte v2, v3, v1

    array-length v2, p0

    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    array-length v0, v2

    if-lez v0, :cond_1

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/exmobwin/a/g;->a()[I

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v3, v0, v4, v5}, Lcom/tencent/exmobwin/a/h;->a([BI[II)[B

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b([BI[II)[B
    .locals 14

    invoke-static {p0, p1}, Lcom/tencent/exmobwin/a/h;->a([BI)[I

    move-result-object v5

    const/4 v1, 0x0

    aget v4, v5, v1

    const/4 v1, 0x1

    aget v3, v5, v1

    const v6, -0x61c88647

    const/4 v1, 0x0

    aget v7, p2, v1

    const/4 v1, 0x1

    aget v8, p2, v1

    const/4 v1, 0x2

    aget v9, p2, v1

    const/4 v1, 0x3

    aget v10, p2, v1

    const/16 v1, 0x20

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    const v1, -0x3910c8e0

    :goto_0
    const/4 v2, 0x0

    move v13, v2

    move v2, v1

    move v1, v13

    :goto_1
    move/from16 v0, p3

    if-lt v1, v0, :cond_2

    const/4 v1, 0x0

    aput v4, v5, v1

    const/4 v1, 0x1

    aput v3, v5, v1

    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/tencent/exmobwin/a/h;->a([II)[B

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x10

    move/from16 v0, p3

    if-ne v0, v1, :cond_1

    const v1, -0x1c886470

    goto :goto_0

    :cond_1
    mul-int v1, v6, p3

    goto :goto_0

    :cond_2
    shl-int/lit8 v11, v4, 0x4

    add-int/2addr v11, v9

    add-int v12, v4, v2

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v4, 0x5

    add-int/2addr v12, v10

    xor-int/2addr v11, v12

    sub-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v7

    add-int v12, v3, v2

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v3, 0x5

    add-int/2addr v12, v8

    xor-int/2addr v11, v12

    sub-int/2addr v4, v11

    sub-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static c([B)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, [B

    array-length v0, p0

    new-array v3, v0, [B

    move v0, v2

    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_1

    array-length v0, v3

    if-lez v0, :cond_0

    aget-byte v0, v3, v2

    array-length v1, v3

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    array-length v4, v1

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/tencent/exmobwin/a/g;->a()[I

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {p0, v0, v4, v5}, Lcom/tencent/exmobwin/a/h;->b([BI[II)[B

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v2, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
