; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread_dbg/extr_t_threads.c_iterateThreads5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread_dbg/extr_t_threads.c_iterateThreads5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TD_ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Thread name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @iterateThreads5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterateThreads5(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %11 = call i64 @td_thr_getname(i32* %9, i8* %10, i32 3)
  %12 = load i64, i64* @TD_ERR_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ATF_REQUIRE(i32 %14)
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %17 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 3
  %22 = zext i1 %21 to i32
  %23 = call i32 @ATF_REQUIRE(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i64, i64* @TD_ERR_OK, align 8
  %28 = trunc i64 %27 to i32
  ret i32 %28
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @td_thr_getname(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
