; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fpa.h_cvmx_fpa_is_member.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fpa.h_cvmx_fpa_is_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@cvmx_fpa_pool_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @cvmx_fpa_is_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_fpa_is_member(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp uge i8* %5, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %23, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %18, i64 %30
  %32 = icmp ult i8* %13, %31
  br label %33

33:                                               ; preds = %12, %2
  %34 = phi i1 [ false, %2 ], [ %32, %12 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
