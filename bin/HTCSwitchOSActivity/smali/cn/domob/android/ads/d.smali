.class Lcn/domob/android/ads/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "domob_config"

.field protected static final b:Ljava/lang/String; = "cookie_id"

.field protected static final c:Ljava/lang/String; = "interval"

.field protected static final d:Ljava/lang/String; = "disable"

.field protected static final e:Ljava/lang/String; = "timestamp"

.field protected static final f:Ljava/lang/String; = "time"

.field protected static final g:Ljava/lang/String; = "next_time"

.field protected static final h:Ljava/lang/String; = "version"

.field protected static final i:Ljava/lang/String; = "config"


# instance fields
.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/domob/android/ads/d;->j:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcn/domob/android/ads/d;->k:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcn/domob/android/ads/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/d;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v2, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 42
    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_1
    :try_start_1
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 44
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 45
    :cond_2
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 46
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 47
    :cond_3
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 48
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 49
    :cond_4
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 50
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 54
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-void
.end method

.method protected a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
