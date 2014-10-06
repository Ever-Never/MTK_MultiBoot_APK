.class Lcn/domob/android/ads/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Lcn/domob/android/ads/J;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/ae;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/ae;->g:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/ae;->a:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/ae;->b:Ljava/lang/String;

    .line 9
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcn/domob/android/ads/ae;->c:J

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/ae;->d:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/ae;->e:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/ae;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/ae;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcn/domob/android/ads/ae;->c:J

    .line 63
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcn/domob/android/ads/ae;->f:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-wide p1, p0, Lcn/domob/android/ads/ae;->d:J

    .line 75
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcn/domob/android/ads/ae;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/ae;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcn/domob/android/ads/ae;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcn/domob/android/ads/ae;->c:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcn/domob/android/ads/ae;->e:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcn/domob/android/ads/ae;->d:J

    return-wide v0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 5
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/ae;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/ae;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/domob/android/ads/ae;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/ae;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :cond_0
    return v4
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Z
    .locals 4

    .prologue
    .line 86
    sget-object v0, Lcn/domob/android/ads/ae;->g:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/ae;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adExpire="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/domob/android/ads/ae;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/ae;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcn/domob/android/ads/ae;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/ae;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/domob/android/ads/ae;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/ae;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
