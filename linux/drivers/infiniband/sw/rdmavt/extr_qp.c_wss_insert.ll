; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_wss_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_wss_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_wss = type { i64, i32, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_wss*, i8*)* @wss_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wss_insert(%struct.rvt_wss* %0, i8* %1) #0 {
  %3 = alloca %struct.rvt_wss*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rvt_wss* %0, %struct.rvt_wss** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %13 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %11, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BITS_PER_LONG, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BITS_PER_LONG, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %26 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @test_and_set_bit(i32 %24, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %35 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %34, i32 0, i32 1
  %36 = call i32 @atomic_inc(i32* %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %39 = call i32 @wss_advance_clean_counter(%struct.rvt_wss* %38)
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wss_advance_clean_counter(%struct.rvt_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
