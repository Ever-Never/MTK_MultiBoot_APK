.class Lcn/domob/android/ads/A$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/A$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/A$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/A$1;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcn/domob/android/ads/A$1$1;->a:Lcn/domob/android/ads/A$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/c;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 129
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Splash DomobWebView \u62e6\u622a\u5230:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    move-object v0, p1

    .line 130
    check-cast v0, Lcn/domob/android/ads/D;

    .line 131
    const-string v1, "domob"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v3, "domob"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v3, "addAsset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v2

    const-string v3, "JS function \'addAsset\' is called."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v4

    const-string v5, "param: %s=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v10

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v1, v9, :cond_1

    .line 147
    const-string v1, "url"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    const-string v3, "alias"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v3

    const-string v4, "url=%s, alias=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v10

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcn/domob/android/ads/A$1$1;->a:Lcn/domob/android/ads/A$1;

    iget-object v3, v3, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v3, v3, Lcn/domob/android/ads/A;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v3}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 154
    :cond_2
    const-string v3, "addAssets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v2

    const-string v3, "JS function \'addAssets\' is called."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v2

    const-string v5, "param: %s=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v10

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcn/domob/android/ads/A$1$1;->a:Lcn/domob/android/ads/A$1;

    iget-object v5, v5, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v5, v5, Lcn/domob/android/ads/A;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v5}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/android/ads/l$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v5}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/A$1$1;->a:Lcn/domob/android/ads/A$1;

    iget-object v0, v0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    invoke-virtual {v0, p1, p2, v8}, Lcn/domob/android/ads/A;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_1
.end method
