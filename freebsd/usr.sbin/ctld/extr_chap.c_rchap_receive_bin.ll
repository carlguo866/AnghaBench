; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_chap.c_rchap_receive_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_chap.c_rchap_receive_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchap = type { i8, i64, i32* }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchap*, i8, i8*, i64)* @rchap_receive_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rchap_receive_bin(%struct.rchap* %0, i8 zeroext %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.rchap*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.rchap* %0, %struct.rchap** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8, i8* %6, align 1
  %10 = load %struct.rchap*, %struct.rchap** %5, align 8
  %11 = getelementptr inbounds %struct.rchap, %struct.rchap* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32* @calloc(i64 %12, i32 1)
  %14 = load %struct.rchap*, %struct.rchap** %5, align 8
  %15 = getelementptr inbounds %struct.rchap, %struct.rchap* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.rchap*, %struct.rchap** %5, align 8
  %17 = getelementptr inbounds %struct.rchap, %struct.rchap* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %4
  %23 = load %struct.rchap*, %struct.rchap** %5, align 8
  %24 = getelementptr inbounds %struct.rchap, %struct.rchap* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memcpy(i32* %25, i8* %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.rchap*, %struct.rchap** %5, align 8
  %31 = getelementptr inbounds %struct.rchap, %struct.rchap* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  ret void
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
