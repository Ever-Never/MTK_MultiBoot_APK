.class final Lcn/domob/android/ads/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/f$b;,
        Lcn/domob/android/ads/f$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "def_res"

.field static final b:Ljava/lang/String; = "tmp_res"

.field static final c:Ljava/lang/String; = "domob_ads.db"

.field static final d:Ljava/lang/String; = "domob_splash_ad_cache_res"

.field static final e:Ljava/lang/String; = "creative_alias"

.field static final f:Ljava/lang/String; = "alias_info"

.field static final g:I = 0x2

.field static final h:I = 0xa

.field private static j:Lcn/domob/android/ads/f;

.field private static l:Lcn/domob/android/ads/J;


# instance fields
.field private i:Landroid/content/Context;

.field private k:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/f;->j:Lcn/domob/android/ads/f;

    .line 15
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/f;->l:Lcn/domob/android/ads/J;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v0, "domob_ads.db"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 14
    iput-object v2, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    invoke-virtual {p0}, Lcn/domob/android/ads/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iput-object p1, p0, Lcn/domob/android/ads/f;->i:Landroid/content/Context;

    .line 59
    return-void
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)Lcn/domob/android/ads/f;
    .locals 2
    .parameter

    .prologue
    .line 48
    const-class v1, Lcn/domob/android/ads/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/android/ads/f;->j:Lcn/domob/android/ads/f;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcn/domob/android/ads/f;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/domob/android/ads/f;->j:Lcn/domob/android/ads/f;

    .line 52
    :cond_0
    sget-object v0, Lcn/domob/android/ads/f;->j:Lcn/domob/android/ads/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/android/ads/f;->i:Landroid/content/Context;

    return-object v0
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 96
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 97
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method protected a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/f;->k:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 105
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 106
    sget-object v0, Lcn/domob/android/ads/f;->l:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert: failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const-string v0, "CREATE TABLE IF NOT EXISTS domob_splash_ad_cache_res(_ad_id VARCHAR NOT NULL PRIMARY KEY,_ad_content TEXT ,_ad_alive_time LONG ,_enter_db_time LONG ,_orientation VARCHAR ,_ad_type VARCHAR );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s VARCHAR NOT NULL, %s VARCHAR NOT NULL, PRIMARY KEY (%s, %s));"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "creative_alias"

    aput-object v2, v1, v3

    const-string v2, "creative_id"

    aput-object v2, v1, v4

    const-string v2, "alias"

    aput-object v2, v1, v5

    const-string v2, "creative_id"

    aput-object v2, v1, v6

    const-string v2, "alias"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s VARCHAR NOT NULL PRIMARY KEY, %s TEXT, %s TEXT, %s INTEGER);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "alias_info"

    aput-object v2, v1, v3

    const-string v2, "alias"

    aput-object v2, v1, v4

    const-string v2, "url"

    aput-object v2, v1, v5

    const-string v2, "local_path"

    aput-object v2, v1, v6

    const-string v2, "ts"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 89
    const-string v0, "DROP TABLE IF EXISTS def_res;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "DROP TABLE IF EXISTS tmp_res;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "DROP TABLE IF EXISTS domob_splash_ad_cache_res;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void
.end method
