.class public Lcom/adsmogo/model/obj/InmobiAD;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->a:I

    iput-object p2, p0, Lcom/adsmogo/model/obj/InmobiAD;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adsmogo/model/obj/InmobiAD;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/adsmogo/model/obj/InmobiAD;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->a:I

    iput-object p2, p0, Lcom/adsmogo/model/obj/InmobiAD;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsmogo/model/obj/InmobiAD;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/adsmogo/model/obj/InmobiAD;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/InmobiAD;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/InmobiAD;->a:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/InmobiAD;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/InmobiAD;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/InmobiAD;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->d:Ljava/lang/String;

    return-void
.end method

.method public setAdsType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->a:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->b:Ljava/lang/String;

    return-void
.end method

.method public setLinkText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->e:Ljava/lang/String;

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/InmobiAD;->c:Ljava/lang/String;

    return-void
.end method
