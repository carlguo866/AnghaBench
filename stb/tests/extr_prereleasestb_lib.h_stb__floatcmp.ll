; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__floatcmp.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__floatcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__floatcmpoffset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb__floatcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @stb__floatcmpoffset, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  %11 = bitcast i8* %10 to float*
  %12 = load float, float* %11, align 4
  store float %12, float* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @stb__floatcmpoffset, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to float*
  %18 = load float, float* %17, align 4
  store float %18, float* %6, align 4
  %19 = load float, float* %5, align 4
  %20 = load float, float* %6, align 4
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %28

23:                                               ; preds = %2
  %24 = load float, float* %5, align 4
  %25 = load float, float* %6, align 4
  %26 = fcmp ogt float %24, %25
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ -1, %22 ], [ %27, %23 ]
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
