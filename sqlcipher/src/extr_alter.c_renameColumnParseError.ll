; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_renameColumnParseError.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_renameColumnParseError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"error in %s %s%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" after rename\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, %struct.TYPE_3__*)* @renameColumnParseError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameColumnParseError(i32* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @sqlite3_value_text(i32* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @sqlite3_value_text(i32* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21, i8* %25, i32 %28)
  store i8* %29, i8** %13, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @sqlite3_result_error(i32* %30, i8* %31, i32 -1)
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @sqlite3_free(i8* %33)
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
