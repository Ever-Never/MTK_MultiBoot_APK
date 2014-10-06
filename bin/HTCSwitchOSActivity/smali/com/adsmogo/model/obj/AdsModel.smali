.class public Lcom/adsmogo/model/obj/AdsModel;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adsmogo/model/obj/AdsModel;->c:I

    iput p2, p0, Lcom/adsmogo/model/obj/AdsModel;->d:I

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/AdsModel;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/AdsModel;->d:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/AdsModel;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/AdsModel;->c:I

    return v0
.end method

.method public setAdView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/AdsModel;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/AdsModel;->d:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/AdsModel;->b:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/AdsModel;->c:I

    return-void
.end method
