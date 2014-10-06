.class public Lcom/adsmogo/controller/count/AdsCount;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/util/LinkedHashMap;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->i:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/controller/count/AdsCount;->j:I

    invoke-static {p1}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/adsmogo/util/GetUserInfo;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/controller/count/AdsCount;->g:I

    const-string v0, "1.2.6"

    iput-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->h:Ljava/lang/String;

    const/16 v0, 0x12b

    iput v0, p0, Lcom/adsmogo/controller/count/AdsCount;->k:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/adsmogo/controller/count/AdsCount;
    .locals 2

    new-instance v0, Lcom/adsmogo/controller/count/AdsCount;

    invoke-direct {v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>()V

    iget v1, p0, Lcom/adsmogo/controller/count/AdsCount;->d:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setAdtype(I)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setAid(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsmogo/controller/count/AdsCount;->j:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setBk(I)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setCn(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setDev(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setLc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setNidAndType(Ljava/util/LinkedHashMap;)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setUuid(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsmogo/controller/count/AdsCount;->g:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setUv(I)V

    iget v1, p0, Lcom/adsmogo/controller/count/AdsCount;->k:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setV(I)V

    iget-object v1, p0, Lcom/adsmogo/controller/count/AdsCount;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/AdsCount;->setVr(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/controller/count/AdsCount;->clone()Lcom/adsmogo/controller/count/AdsCount;

    move-result-object v0

    return-object v0
.end method

.method public getAdtype()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/count/AdsCount;->d:I

    return v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBk()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/count/AdsCount;->j:I

    return v0
.end method

.method public getCn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNidAndType()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->i:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUv()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/count/AdsCount;->g:I

    return v0
.end method

.method public getV()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/count/AdsCount;->k:I

    return v0
.end method

.method public getVr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/count/AdsCount;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAdtype(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/count/AdsCount;->d:I

    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->a:Ljava/lang/String;

    return-void
.end method

.method public setBk(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/count/AdsCount;->j:I

    return-void
.end method

.method public setCn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->b:Ljava/lang/String;

    return-void
.end method

.method public setDev(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->f:Ljava/lang/String;

    return-void
.end method

.method public setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->e:Ljava/lang/String;

    return-void
.end method

.method public setNidAndType(Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->i:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->c:Ljava/lang/String;

    return-void
.end method

.method public setUv(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/count/AdsCount;->g:I

    return-void
.end method

.method public setV(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/count/AdsCount;->k:I

    return-void
.end method

.method public setVr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/count/AdsCount;->h:Ljava/lang/String;

    return-void
.end method
