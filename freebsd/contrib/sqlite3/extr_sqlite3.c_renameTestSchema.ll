; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_renameTestSchema.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_renameTestSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [156 x i8] c"SELECT 1 FROM \22%w\22.%s WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL \00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [155 x i8] c"SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @renameTestSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameTestSchema(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @MASTER_NAME, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i32*, i8*, i8*, i8*, ...) @sqlite3NestedParse(i32* %7, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %11, i8* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @MASTER_NAME, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i32*, i8*, i8*, i8*, ...) @sqlite3NestedParse(i32* %18, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22)
  br label %24

24:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @sqlite3NestedParse(i32*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
