.class final Lcom/adsmogo/util/d;
.super Ljava/util/ArrayList;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/adsmogo/util/d;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
