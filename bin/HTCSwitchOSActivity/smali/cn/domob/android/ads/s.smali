.class final Lcn/domob/android/ads/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/s$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/J;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/J;

    .line 9
    const-string v0, "01"

    sput-object v0, Lcn/domob/android/ads/s;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method private static a(I[B)B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    array-length v0, p1

    if-lt p0, v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    aget-byte v0, p1, p0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/s$a;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    .line 41
    new-instance v0, Lcn/domob/android/ads/s$a;

    invoke-direct {v0}, Lcn/domob/android/ads/s$a;-><init>()V

    .line 44
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 45
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 46
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 47
    const/16 v1, 0xa

    new-array v6, v1, [B

    .line 48
    const/4 v2, 0x3

    .line 49
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    array-length v7, v3

    add-int/lit8 v7, v7, -0x4

    if-lt v1, v7, :cond_0

    .line 50
    aget-byte v7, v3, v1

    aput-byte v7, v6, v2

    .line 51
    add-int/lit8 v2, v2, -0x1

    .line 49
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
    :cond_0
    array-length v1, v4

    .line 56
    const/4 v2, 0x4

    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    .line 57
    const/4 v2, 0x5

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    .line 58
    invoke-static {v5, v6}, Lcn/domob/android/ads/s;->a([B[B)[B

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcn/domob/android/ads/s;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/s$a;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x41dfffffffc00000L

    mul-double/2addr v5, v7

    double-to-int v1, v5

    .line 70
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/s$a;->b(Ljava/lang/String;)V

    .line 75
    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v1, v3

    .line 76
    invoke-static {v1}, Lcn/domob/android/ads/s;->a(I)[B

    move-result-object v3

    .line 78
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 79
    rsub-int/lit8 v4, v1, 0x3

    aget-byte v5, v3, v1

    aput-byte v5, v2, v4

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_1
    invoke-static {v2}, Lcn/domob/android/ads/s;->a([B)[B

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/domob/android/ads/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcn/domob/android/ads/s;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/s$a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    sget-object v2, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static a(I)[B
    .locals 3
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 104
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 105
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    const/4 v1, 0x2

    const/high16 v2, 0xff

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    const/4 v1, 0x3

    const/high16 v2, -0x100

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 126
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 127
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 5
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x4

    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-gt v0, v1, :cond_1

    .line 154
    const/4 v1, 0x3

    :goto_1
    if-ltz v1, :cond_0

    .line 155
    add-int/lit8 v2, v0, 0x3

    sub-int/2addr v2, v1

    rsub-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    add-int/lit8 v4, v0, 0x3

    sub-int/2addr v4, v1

    invoke-static {v4, p0}, Lcn/domob/android/ads/s;->a(I[B)B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 154
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 158
    :cond_1
    return-object p0
.end method

.method private static a([B[B)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 135
    move v0, v1

    .line 136
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_2

    .line 137
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    move v2, v1

    .line 138
    :goto_1
    if-ltz v2, :cond_1

    .line 139
    rsub-int/lit8 v3, v2, 0x9

    sub-int v4, v0, v2

    invoke-static {v4, p0}, Lcn/domob/android/ads/s;->a(I[B)B

    move-result v4

    aput-byte v4, p1, v3

    .line 138
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    move v2, v1

    .line 143
    :goto_2
    if-ltz v2, :cond_1

    .line 144
    rsub-int/lit8 v3, v2, 0x9

    rsub-int/lit8 v4, v2, 0x9

    aget-byte v4, p1, v4

    sub-int v5, v0, v2

    invoke-static {v5, p0}, Lcn/domob/android/ads/s;->a(I[B)B

    move-result v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 143
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 149
    :cond_2
    return-object p1
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 162
    const-string v0, ""

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 165
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
