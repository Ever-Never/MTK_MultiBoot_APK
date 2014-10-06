.class public Lcom/adsmogo/model/obj/CaseeAD;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adsmogo/model/obj/CaseeAD;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsmogo/model/obj/CaseeAD;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/adsmogo/model/obj/CaseeAD;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/adsmogo/model/obj/CaseeAD;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/CaseeAD;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/CaseeAD;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/CaseeAD;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/CaseeAD;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getuLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/CaseeAD;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getuLogoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/CaseeAD;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setAdID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->a:Ljava/lang/String;

    return-void
.end method

.method public setAdName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->c:Ljava/lang/String;

    return-void
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->b:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->d:Ljava/lang/String;

    return-void
.end method

.method public setuLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->e:Ljava/lang/String;

    return-void
.end method

.method public setuLogoDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/CaseeAD;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method
