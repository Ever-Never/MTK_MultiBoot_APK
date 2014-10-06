.class public Lcom/tencent/exmobwin/c/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DownloadDbService"

.field private static final b:Ljava/lang/String; = "/Tencent/MobWIN_DATA/"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/c/f;->d:Z

    iput-object p1, p0, Lcom/tencent/exmobwin/c/f;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/exmobwin/c/f;->d:Z

    return-void
.end method

.method private a(Lcom/tencent/exmobwin/c/d;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v3, 0x0

    const-string v0, ""

    iget-boolean v0, p0, Lcom/tencent/exmobwin/c/f;->d:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Tencent/MobWIN_DATA/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/exmobwin/c/d;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-static {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tencent/exmobwin/c/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Lcom/tencent/exmobwin/c/d;

    iget-object v3, p0, Lcom/tencent/exmobwin/c/f;->c:Landroid/content/Context;

    invoke-direct {v4, v3}, Lcom/tencent/exmobwin/c/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-direct {p0, v4}, Lcom/tencent/exmobwin/c/f;->a(Lcom/tencent/exmobwin/c/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "select * from "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/exmobwin/c/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " order by _adtype asc"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v2

    :goto_1
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    if-nez v0, :cond_7

    if-eqz v2, :cond_4

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_7
    :try_start_6
    new-instance v0, Lcom/tencent/exmobwin/c/c;

    invoke-direct {v0}, Lcom/tencent/exmobwin/c/c;-><init>()V

    const-string v5, "_adtype"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->c(I)V

    const-string v5, "_name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->c(Ljava/lang/String;)V

    const-string v5, "_url"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->a(Ljava/lang/String;)V

    const-string v5, "_md5"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->b(Ljava/lang/String;)V

    const-string v5, "_len"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->b(I)V

    const-string v5, "_storepath"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    const-string v5, "_version"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->e(Ljava/lang/String;)V

    const-string v5, "_offset"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->a(I)V

    const-string v5, "_pluginStatus"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/exmobwin/c/c;->d(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v6

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_8

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_a

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_c
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v6, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v0

    move-object v4, v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v3, v4

    move-object v4, v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v6

    goto :goto_3

    :catch_7
    move-exception v1

    goto/16 :goto_0
.end method

.method public a(Lcom/tencent/exmobwin/c/c;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/tencent/exmobwin/c/d;

    iget-object v0, p0, Lcom/tencent/exmobwin/c/f;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/exmobwin/c/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/exmobwin/c/f;->a(Lcom/tencent/exmobwin/c/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "insert into "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/exmobwin/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(_adtype, _name, _url, _md5, _len, _storepath, _version, _offset, _pluginStatus, _modifytime)values(?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/exmobwin/c/c;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object v3, v4, v5

    invoke-virtual {v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(I)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Lcom/tencent/exmobwin/c/d;

    iget-object v3, p0, Lcom/tencent/exmobwin/c/f;->c:Landroid/content/Context;

    invoke-direct {v5, v3}, Lcom/tencent/exmobwin/c/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v5}, Lcom/tencent/exmobwin/c/f;->a(Lcom/tencent/exmobwin/c/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "select * from "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/exmobwin/c/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " where _adtype=?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v4

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v2

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_1
    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_7

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move v2, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_3
    if-eqz v4, :cond_9

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    :goto_4
    throw v0

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v9, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, v4

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_2

    :catch_6
    move-exception v2

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_2

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :cond_c
    move v2, v0

    goto :goto_1
.end method

.method public b(I)Lcom/tencent/exmobwin/c/c;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/tencent/exmobwin/c/d;

    iget-object v2, p0, Lcom/tencent/exmobwin/c/f;->c:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/tencent/exmobwin/c/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/tencent/exmobwin/c/f;->a(Lcom/tencent/exmobwin/c/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "select * from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/exmobwin/c/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where _adtype=?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v4

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v1, Lcom/tencent/exmobwin/c/c;

    invoke-direct {v1}, Lcom/tencent/exmobwin/c/c;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    const-string v0, "_adtype"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->c(I)V

    const-string v0, "_name"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->c(Ljava/lang/String;)V

    const-string v0, "_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->a(Ljava/lang/String;)V

    const-string v0, "_md5"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->b(Ljava/lang/String;)V

    const-string v0, "_len"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->b(I)V

    const-string v0, "_storepath"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    const-string v0, "_version"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->e(Ljava/lang/String;)V

    const-string v0, "_offset"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->a(I)V

    const-string v0, "_pluginStatus"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/c;->d(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-object v0, v1

    :cond_4
    if-eqz v4, :cond_5

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_7

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v4, :cond_9

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_b
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v4, v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_1

    :catch_8
    move-exception v1

    goto/16 :goto_0
.end method

.method public b(Lcom/tencent/exmobwin/c/c;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/tencent/exmobwin/c/d;

    iget-object v0, p0, Lcom/tencent/exmobwin/c/f;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/exmobwin/c/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/exmobwin/c/f;->a(Lcom/tencent/exmobwin/c/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/exmobwin/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " set _name=?, _url=?, _md5=?, _len=?, _storepath=?, _version=?, _offset=?, _pluginStatus=?, _modifytime=? where _adtype=? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/exmobwin/c/c;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object v3, v4, v5

    const/16 v3, 0x9

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/exmobwin/c/d;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public c(Lcom/tencent/exmobwin/c/c;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/exmobwin/c/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/exmobwin/c/f;->b(Lcom/tencent/exmobwin/c/c;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/exmobwin/c/f;->a(Lcom/tencent/exmobwin/c/c;)V

    goto :goto_0
.end method
