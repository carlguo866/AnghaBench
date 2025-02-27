; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_getmodtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_getmodtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_file_getmodtime(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @file_stats(i8* %15, %struct.stat* %6)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ISC_R_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @isc_time_set(i32* %21, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @file_stats(i8*, %struct.stat*) #1

declare dso_local i32 @isc_time_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
