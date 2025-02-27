; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_pcache.c_testpcacheInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_pcache.c_testpcacheInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@testpcacheGlobal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @testpcacheInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testpcacheInit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, bitcast (%struct.TYPE_2__* @testpcacheGlobal to i8*)
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @testpcacheGlobal, i32 0, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @testpcacheGlobal, i32 0, i32 1), align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i64 @sqlite3_malloc(i32 10)
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @testpcacheGlobal, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @testpcacheGlobal, i32 0, i32 0), align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @SQLITE_NOMEM, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @SQLITE_OK, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  ret i32 %23
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
