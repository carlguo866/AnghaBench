; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rubin.c_init_rubin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rubin.c_init_rubin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i64, i64, i32, i32*, i64 }

@UPPER_BIT_RUBIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rubin_state*, i32, i32*)* @init_rubin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rubin(%struct.rubin_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rubin_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rubin_state* %0, %struct.rubin_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %9 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @UPPER_BIT_RUBIN, align 4
  %11 = mul nsw i32 2, %10
  %12 = sext i32 %11 to i64
  %13 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %14 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %16 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %19 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %35, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %30 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
