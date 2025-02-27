; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_save_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_save_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce_info = type { i32, i32, i32, i32 }

@mce_info = common dso_local global %struct.mce_info* null, align 8
@MCE_INFO_MAX = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Too many concurrent recoverable errors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mce_save_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_save_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mce_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mce_info*, %struct.mce_info** @mce_info, align 8
  store %struct.mce_info* %6, %struct.mce_info** %5, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load %struct.mce_info*, %struct.mce_info** %5, align 8
  %9 = load %struct.mce_info*, %struct.mce_info** @mce_info, align 8
  %10 = load i64, i64* @MCE_INFO_MAX, align 8
  %11 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %9, i64 %10
  %12 = icmp ult %struct.mce_info* %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.mce_info*, %struct.mce_info** %5, align 8
  %15 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %14, i32 0, i32 3
  %16 = call i64 @atomic_cmpxchg(i32* %15, i32 0, i32 1)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* @current, align 4
  %20 = load %struct.mce_info*, %struct.mce_info** %5, align 8
  %21 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.mce_info*, %struct.mce_info** %5, align 8
  %24 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.mce_info*, %struct.mce_info** %5, align 8
  %27 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %34

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.mce_info*, %struct.mce_info** %5, align 8
  %31 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %30, i32 1
  store %struct.mce_info* %31, %struct.mce_info** %5, align 8
  br label %7

32:                                               ; preds = %7
  %33 = call i32 @mce_panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  br label %34

34:                                               ; preds = %32, %18
  ret void
}

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @mce_panic(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
