.class public final Lcom/adsmogo/encryption/Base64;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[I

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x39

    const/16 v0, 0x30

    const/16 v7, 0x2f

    const/16 v6, 0x2b

    const/4 v1, 0x0

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/adsmogo/encryption/Base64;->a:[C

    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/adsmogo/encryption/Base64;->b:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    sget-object v2, Lcom/adsmogo/encryption/Base64;->a:[C

    array-length v3, v2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/adsmogo/encryption/Base64;->b:[I

    const/16 v3, 0x3d

    aput v1, v2, v3

    const/16 v2, 0x40

    new-array v2, v2, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x42

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x43

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x44

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x45

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x46

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x48

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x4a

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x4b

    aput-byte v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x4c

    aput-byte v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x4d

    aput-byte v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x4e

    aput-byte v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x50

    aput-byte v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x51

    aput-byte v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x52

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x53

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x54

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x55

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x56

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x57

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x58

    aput-byte v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x59

    aput-byte v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x5a

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x61

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x62

    aput-byte v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x63

    aput-byte v4, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0x64

    aput-byte v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x65

    aput-byte v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0x66

    aput-byte v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x67

    aput-byte v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0x68

    aput-byte v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x69

    aput-byte v4, v2, v3

    const/16 v3, 0x23

    const/16 v4, 0x6a

    aput-byte v4, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0x6b

    aput-byte v4, v2, v3

    const/16 v3, 0x25

    const/16 v4, 0x6c

    aput-byte v4, v2, v3

    const/16 v3, 0x26

    const/16 v4, 0x6d

    aput-byte v4, v2, v3

    const/16 v3, 0x27

    const/16 v4, 0x6e

    aput-byte v4, v2, v3

    const/16 v3, 0x28

    const/16 v4, 0x6f

    aput-byte v4, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0x70

    aput-byte v4, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0x71

    aput-byte v4, v2, v3

    const/16 v3, 0x72

    aput-byte v3, v2, v6

    const/16 v3, 0x2c

    const/16 v4, 0x73

    aput-byte v4, v2, v3

    const/16 v3, 0x2d

    const/16 v4, 0x74

    aput-byte v4, v2, v3

    const/16 v3, 0x2e

    const/16 v4, 0x75

    aput-byte v4, v2, v3

    const/16 v3, 0x76

    aput-byte v3, v2, v7

    const/16 v3, 0x77

    aput-byte v3, v2, v0

    const/16 v3, 0x31

    const/16 v4, 0x78

    aput-byte v4, v2, v3

    const/16 v3, 0x32

    const/16 v4, 0x79

    aput-byte v4, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0x7a

    aput-byte v4, v2, v3

    const/16 v3, 0x34

    aput-byte v0, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0x31

    aput-byte v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0x32

    aput-byte v4, v2, v3

    const/16 v3, 0x37

    const/16 v4, 0x33

    aput-byte v4, v2, v3

    const/16 v3, 0x38

    const/16 v4, 0x34

    aput-byte v4, v2, v3

    const/16 v3, 0x35

    aput-byte v3, v2, v8

    const/16 v3, 0x3a

    const/16 v4, 0x36

    aput-byte v4, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0x37

    aput-byte v4, v2, v3

    const/16 v3, 0x3c

    const/16 v4, 0x38

    aput-byte v4, v2, v3

    const/16 v3, 0x3d

    aput-byte v8, v2, v3

    const/16 v3, 0x3e

    aput-byte v6, v2, v3

    const/16 v3, 0x3f

    aput-byte v7, v2, v3

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    :goto_1
    const/16 v2, 0x80

    if-lt v1, v2, :cond_1

    const/16 v1, 0x41

    :goto_2
    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    const/16 v1, 0x61

    :goto_3
    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :goto_4
    if-le v0, v8, :cond_4

    sget-object v0, Lcom/adsmogo/encryption/Base64;->c:[B

    const/16 v1, 0x3e

    aput-byte v1, v0, v6

    sget-object v0, Lcom/adsmogo/encryption/Base64;->c:[B

    const/16 v1, 0x3f

    aput-byte v1, v0, v7

    return-void

    :cond_0
    sget-object v4, Lcom/adsmogo/encryption/Base64;->b:[I

    sget-object v5, Lcom/adsmogo/encryption/Base64;->a:[C

    aget-char v5, v5, v2

    aput v2, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/adsmogo/encryption/Base64;->c:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 10

    const/16 v9, 0x3d

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    :goto_1
    move v2, v1

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-lt v2, v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_8

    sget-object v1, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :goto_3
    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    if-eq v0, v9, :cond_4

    if-ltz v0, :cond_1

    const/16 v5, 0x80

    if-lt v0, v5, :cond_3

    :cond_1
    move v0, v1

    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/adsmogo/encryption/Base64;->c:[B

    aget-byte v0, v5, v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/adsmogo/encryption/Base64;->c:[B

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    sget-object v6, Lcom/adsmogo/encryption/Base64;->c:[B

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v6, v6, v7

    sget-object v7, Lcom/adsmogo/encryption/Base64;->c:[B

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_9

    sget-object v1, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    sget-object v4, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_3

    :cond_9
    sget-object v1, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v2, v2, v4

    sget-object v4, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/adsmogo/encryption/Base64;->c:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v5, v3

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_3
.end method

.method public static final decode([B)[B
    .locals 9

    const/4 v4, 0x0

    array-length v2, p0

    move v1, v4

    move v0, v4

    :goto_0
    if-lt v1, v2, :cond_0

    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v3, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-gez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v4

    :cond_3
    aget-byte v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    const/4 v5, 0x1

    if-le v1, v5, :cond_5

    add-int/lit8 v1, v1, -0x1

    sget-object v5, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    if-lez v5, :cond_3

    :cond_5
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v3

    new-array v2, v7, [B

    move v6, v4

    move v0, v4

    :goto_2
    if-lt v6, v7, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_6
    move v1, v4

    move v3, v0

    move v0, v4

    :goto_3
    const/4 v5, 0x4

    if-lt v0, v5, :cond_8

    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    if-ge v0, v7, :cond_7

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    if-ge v5, v7, :cond_a

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_7
    move v6, v0

    move v0, v3

    goto :goto_2

    :cond_8
    sget-object v8, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    if-ltz v3, :cond_9

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_a
    move v6, v5

    move v0, v3

    goto :goto_2
.end method

.method public static final decode([C)[B
    .locals 9

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    :goto_0
    if-nez v2, :cond_1

    new-array v0, v4, [B

    :goto_1
    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v4

    move v0, v4

    :goto_2
    if-lt v1, v2, :cond_2

    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-char v5, p0, v1

    aget v3, v3, v5

    if-gez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    move v3, v4

    :cond_5
    aget-char v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    const/4 v5, 0x1

    if-le v1, v5, :cond_7

    add-int/lit8 v1, v1, -0x1

    sget-object v5, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-char v6, p0, v1

    aget v5, v5, v6

    if-lez v5, :cond_5

    :cond_7
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v3

    new-array v2, v7, [B

    move v6, v4

    move v0, v4

    :goto_3
    if-lt v6, v7, :cond_8

    move-object v0, v2

    goto :goto_1

    :cond_8
    move v1, v4

    move v3, v0

    move v0, v4

    :goto_4
    const/4 v5, 0x4

    if-lt v0, v5, :cond_a

    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    if-ge v0, v7, :cond_9

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    if-ge v5, v7, :cond_c

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_9
    move v6, v0

    move v0, v3

    goto :goto_3

    :cond_a
    sget-object v8, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v5, v3, 0x1

    aget-char v3, p0, v3

    aget v3, v8, v3

    if-ltz v3, :cond_b

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_c
    move v6, v5

    move v0, v3

    goto :goto_3
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 14

    const/16 v9, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_e

    sget-object v3, Lcom/adsmogo/encryption/Base64;->b:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-ltz v3, :cond_1

    move v8, v0

    :goto_1
    if-lez v8, :cond_2

    sget-object v0, Lcom/adsmogo/encryption/Base64;->b:[I

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-ltz v0, :cond_4

    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    move v7, v0

    :goto_2
    sub-int v0, v8, v4

    add-int/lit8 v3, v0, 0x1

    if-le v2, v9, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    div-int/lit8 v0, v3, 0x4e

    :goto_3
    shl-int/lit8 v0, v0, 0x1

    :goto_4
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v9, v2, v7

    new-array v2, v9, [B

    div-int/lit8 v3, v9, 0x3

    mul-int/lit8 v10, v3, 0x3

    move v5, v1

    move v3, v1

    :goto_5
    if-lt v3, v10, :cond_9

    if-ge v3, v9, :cond_3

    move v0, v4

    move v4, v1

    :goto_6
    sub-int v5, v8, v7

    if-le v0, v5, :cond_a

    const/16 v0, 0x10

    move v1, v3

    :goto_7
    if-lt v1, v9, :cond_b

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_6

    const/4 v0, 0x2

    move v7, v0

    goto :goto_2

    :cond_6
    move v7, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    sget-object v12, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v11, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    add-int/lit8 v4, v3, 0x1

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    if-lez v0, :cond_d

    add-int/lit8 v3, v5, 0x1

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    add-int/lit8 v3, v6, 0x2

    move v5, v1

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_5

    :cond_a
    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v6, v0

    mul-int/lit8 v6, v1, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move v0, v5

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v3, v1, 0x1

    shr-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto/16 :goto_7

    :cond_c
    move v5, v3

    move v3, v4

    move v4, v6

    goto/16 :goto_5

    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_5

    :cond_e
    move v8, v0

    goto/16 :goto_1
.end method

.method public static final decodeFast([B)[B
    .locals 14

    const/16 v9, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    array-length v2, p0

    if-nez v2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_e

    sget-object v3, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-ltz v3, :cond_1

    move v8, v0

    :goto_1
    if-lez v8, :cond_2

    sget-object v0, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-byte v3, p0, v8

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-ltz v0, :cond_4

    :cond_2
    aget-byte v0, p0, v8

    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    move v7, v0

    :goto_2
    sub-int v0, v8, v4

    add-int/lit8 v3, v0, 0x1

    if-le v2, v9, :cond_8

    aget-byte v0, p0, v9

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    div-int/lit8 v0, v3, 0x4e

    :goto_3
    shl-int/lit8 v0, v0, 0x1

    :goto_4
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v9, v2, v7

    new-array v2, v9, [B

    div-int/lit8 v3, v9, 0x3

    mul-int/lit8 v10, v3, 0x3

    move v5, v1

    move v3, v1

    :goto_5
    if-lt v3, v10, :cond_9

    if-ge v3, v9, :cond_3

    move v0, v4

    move v4, v1

    :goto_6
    sub-int v5, v8, v7

    if-le v0, v5, :cond_a

    const/16 v0, 0x10

    move v1, v3

    :goto_7
    if-lt v1, v9, :cond_b

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v8, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v6, :cond_6

    const/4 v0, 0x2

    move v7, v0

    goto :goto_2

    :cond_6
    move v7, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, p0, v4

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, p0, v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v11, v12, 0x1

    aget-byte v12, p0, v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    sget-object v12, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v11, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    add-int/lit8 v4, v3, 0x1

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    if-lez v0, :cond_d

    add-int/lit8 v3, v5, 0x1

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    add-int/lit8 v3, v6, 0x2

    move v5, v1

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_5

    :cond_a
    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aget v0, v6, v0

    mul-int/lit8 v6, v1, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move v0, v5

    goto :goto_6

    :cond_b
    add-int/lit8 v3, v1, 0x1

    shr-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto :goto_7

    :cond_c
    move v5, v3

    move v3, v4

    move v4, v6

    goto/16 :goto_5

    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_5

    :cond_e
    move v8, v0

    goto/16 :goto_1
.end method

.method public static final decodeFast([C)[B
    .locals 14

    const/16 v9, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    array-length v2, p0

    if-nez v2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_e

    sget-object v3, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-char v5, p0, v4

    aget v3, v3, v5

    if-ltz v3, :cond_1

    move v8, v0

    :goto_1
    if-lez v8, :cond_2

    sget-object v0, Lcom/adsmogo/encryption/Base64;->b:[I

    aget-char v3, p0, v8

    aget v0, v0, v3

    if-ltz v0, :cond_4

    :cond_2
    aget-char v0, p0, v8

    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    move v7, v0

    :goto_2
    sub-int v0, v8, v4

    add-int/lit8 v3, v0, 0x1

    if-le v2, v9, :cond_8

    aget-char v0, p0, v9

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    div-int/lit8 v0, v3, 0x4e

    :goto_3
    shl-int/lit8 v0, v0, 0x1

    :goto_4
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v9, v2, v7

    new-array v2, v9, [B

    div-int/lit8 v3, v9, 0x3

    mul-int/lit8 v10, v3, 0x3

    move v5, v1

    move v3, v1

    :goto_5
    if-lt v3, v10, :cond_9

    if-ge v3, v9, :cond_3

    move v0, v4

    move v4, v1

    :goto_6
    sub-int v5, v8, v7

    if-le v0, v5, :cond_a

    const/16 v0, 0x10

    move v1, v3

    :goto_7
    if-lt v1, v9, :cond_b

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v8, -0x1

    aget-char v0, p0, v0

    if-ne v0, v6, :cond_6

    const/4 v0, 0x2

    move v7, v0

    goto :goto_2

    :cond_6
    move v7, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v11, v4, 0x1

    aget-char v4, p0, v4

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    sget-object v12, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v6, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v11, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    add-int/lit8 v4, v3, 0x1

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    if-lez v0, :cond_d

    add-int/lit8 v3, v5, 0x1

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    add-int/lit8 v3, v6, 0x2

    move v5, v1

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_5

    :cond_a
    sget-object v6, Lcom/adsmogo/encryption/Base64;->b:[I

    add-int/lit8 v5, v0, 0x1

    aget-char v0, p0, v0

    aget v0, v6, v0

    mul-int/lit8 v6, v1, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move v0, v5

    goto :goto_6

    :cond_b
    add-int/lit8 v3, v1, 0x1

    shr-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto :goto_7

    :cond_c
    move v5, v3

    move v3, v4

    move v4, v6

    goto/16 :goto_5

    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_5

    :cond_e
    move v8, v0

    goto/16 :goto_1
.end method

.method public static final encodeToByte([BZ)[B
    .locals 14

    const/16 v2, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    move v6, v0

    :goto_0
    if-nez v6, :cond_1

    new-array v0, v1, [B

    :goto_1
    return-object v0

    :cond_0
    move v6, v1

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v3, v0, 0x2

    if-eqz p1, :cond_5

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v8, v3, v0

    new-array v3, v8, [B

    move v0, v1

    move v4, v1

    move v5, v1

    :cond_2
    :goto_3
    if-lt v5, v7, :cond_6

    sub-int v0, v6, v7

    if-lez v0, :cond_4

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-ne v0, v13, :cond_3

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_3
    or-int/2addr v1, v4

    add-int/lit8 v4, v8, -0x4

    sget-object v5, Lcom/adsmogo/encryption/Base64;->a:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v8, -0x3

    sget-object v5, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v8, -0x2

    if-ne v0, v13, :cond_7

    sget-object v0, Lcom/adsmogo/encryption/Base64;->a:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    int-to-byte v0, v0

    :goto_4
    aput-byte v0, v3, v4

    add-int/lit8 v0, v8, -0x1

    aput-byte v2, v3, v0

    :cond_4
    move-object v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v4, v9, :cond_2

    add-int/lit8 v9, v4, 0x1

    const/16 v0, 0xd

    aput-byte v0, v3, v4

    add-int/lit8 v0, v9, 0x1

    const/16 v4, 0xa

    aput-byte v4, v3, v9

    move v4, v0

    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public static final encodeToChar([BZ)[C
    .locals 14

    const/16 v2, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    move v6, v0

    :goto_0
    if-nez v6, :cond_1

    new-array v0, v1, [C

    :goto_1
    return-object v0

    :cond_0
    move v6, v1

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v3, v0, 0x2

    if-eqz p1, :cond_5

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v8, v3, v0

    new-array v3, v8, [C

    move v0, v1

    move v4, v1

    move v5, v1

    :cond_2
    :goto_3
    if-lt v5, v7, :cond_6

    sub-int v0, v6, v7

    if-lez v0, :cond_4

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-ne v0, v13, :cond_3

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_3
    or-int/2addr v1, v4

    add-int/lit8 v4, v8, -0x4

    sget-object v5, Lcom/adsmogo/encryption/Base64;->a:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    add-int/lit8 v4, v8, -0x3

    sget-object v5, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    add-int/lit8 v4, v8, -0x2

    if-ne v0, v13, :cond_7

    sget-object v0, Lcom/adsmogo/encryption/Base64;->a:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_4
    aput-char v0, v3, v4

    add-int/lit8 v0, v8, -0x1

    aput-char v2, v3, v0

    :cond_4
    move-object v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v3, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v3, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v3, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/adsmogo/encryption/Base64;->a:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    aput-char v9, v3, v10

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v4, v9, :cond_2

    add-int/lit8 v9, v4, 0x1

    const/16 v0, 0xd

    aput-char v0, v3, v4

    add-int/lit8 v0, v9, 0x1

    const/16 v4, 0xa

    aput-char v4, v3, v9

    move v4, v0

    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/adsmogo/encryption/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
