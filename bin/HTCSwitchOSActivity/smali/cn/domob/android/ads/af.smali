.class Lcn/domob/android/ads/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/af$1;,
        Lcn/domob/android/ads/af$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/J; = null

.field private static b:[Landroid/view/animation/AnimationSet; = null

.field private static c:[Landroid/view/animation/AnimationSet; = null

.field private static d:[Landroid/view/animation/AnimationSet; = null

.field private static e:[Landroid/view/animation/AnimationSet; = null

.field private static f:[Landroid/view/animation/AnimationSet; = null

.field private static final g:J = 0x2bcL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/af;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/af;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static a()[Landroid/view/animation/AnimationSet;
    .locals 10

    .prologue
    .line 45
    sget-object v0, Lcn/domob/android/ads/af;->b:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 49
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 50
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x4080

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 53
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 55
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 56
    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 57
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 58
    const-wide/16 v4, 0x2bc

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 60
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 61
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 64
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcn/domob/android/ads/af;->b:[Landroid/view/animation/AnimationSet;

    .line 71
    :cond_0
    sget-object v0, Lcn/domob/android/ads/af;->b:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected static a(Lcn/domob/android/ads/af$a;)[Landroid/view/animation/AnimationSet;
    .locals 3
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcn/domob/android/ads/af$1;->a:[I

    invoke-virtual {p0}, Lcn/domob/android/ads/af$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    sget-object v0, Lcn/domob/android/ads/af;->a:Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/af;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid animation type."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    invoke-static {}, Lcn/domob/android/ads/af;->a()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_1
    invoke-static {}, Lcn/domob/android/ads/af;->b()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-static {}, Lcn/domob/android/ads/af;->c()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_3
    invoke-static {}, Lcn/domob/android/ads/af;->d()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_4
    invoke-static {}, Lcn/domob/android/ads/af;->e()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b()[Landroid/view/animation/AnimationSet;
    .locals 14

    .prologue
    const/high16 v11, 0x3f80

    const-wide/16 v12, 0x2bc

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    sget-object v0, Lcn/domob/android/ads/af;->c:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 79
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 80
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v2

    move v10, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 83
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 85
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v2, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 87
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v11, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 88
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 90
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 91
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    sput-object v3, Lcn/domob/android/ads/af;->c:[Landroid/view/animation/AnimationSet;

    .line 101
    :cond_0
    sget-object v0, Lcn/domob/android/ads/af;->c:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private static c()[Landroid/view/animation/AnimationSet;
    .locals 14

    .prologue
    const/high16 v13, 0x3f80

    const-wide/16 v11, 0x2bc

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 105
    sget-object v0, Lcn/domob/android/ads/af;->d:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 109
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 110
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v13

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 113
    invoke-virtual {v2, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 115
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 116
    invoke-virtual {v3, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 117
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v13, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    invoke-virtual {v5, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 120
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 121
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 122
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 124
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    sput-object v2, Lcn/domob/android/ads/af;->d:[Landroid/view/animation/AnimationSet;

    .line 131
    :cond_0
    sget-object v0, Lcn/domob/android/ads/af;->d:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private static d()[Landroid/view/animation/AnimationSet;
    .locals 16

    .prologue
    const/high16 v2, 0x3f80

    const-wide/16 v14, 0x2bc

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 135
    sget-object v0, Lcn/domob/android/ads/af;->e:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 139
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 140
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, -0x4080

    move v6, v1

    move v7, v4

    move v8, v1

    move v10, v1

    move v11, v4

    move v12, v1

    move v13, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 143
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 145
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 146
    invoke-virtual {v3, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 147
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    invoke-virtual {v6, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 150
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 151
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 154
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 155
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 156
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    sput-object v3, Lcn/domob/android/ads/af;->e:[Landroid/view/animation/AnimationSet;

    .line 161
    :cond_0
    sget-object v0, Lcn/domob/android/ads/af;->e:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private static e()[Landroid/view/animation/AnimationSet;
    .locals 7

    .prologue
    const-wide/16 v5, 0x2bc

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 165
    sget-object v0, Lcn/domob/android/ads/af;->f:[Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 167
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 168
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 169
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 171
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 172
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 174
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 177
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcn/domob/android/ads/af;->f:[Landroid/view/animation/AnimationSet;

    .line 180
    :cond_0
    sget-object v0, Lcn/domob/android/ads/af;->f:[Landroid/view/animation/AnimationSet;

    return-object v0
.end method
