; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_Text_PaintCenter.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_Text_PaintCenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ITEM_TEXTSTYLE_SHADOWEDMORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Text_PaintCenter(float %0, float %1, float %2, i32 %3, i8* %4, float %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store float %5, float* %12, align 4
  %14 = load i8*, i8** %11, align 8
  %15 = load float, float* %9, align 4
  %16 = call i32 @Text_Width(i8* %14, float %15, i32 0)
  store i32 %16, i32* %13, align 4
  %17 = load float, float* %7, align 4
  %18 = load i32, i32* %13, align 4
  %19 = sdiv i32 %18, 2
  %20 = sitofp i32 %19 to float
  %21 = fsub float %17, %20
  %22 = load float, float* %8, align 4
  %23 = load float, float* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* @ITEM_TEXTSTYLE_SHADOWEDMORE, align 4
  %27 = call i32 @Text_Paint(float %21, float %22, float %23, i32 %24, i8* %25, i32 0, i32 0, i32 %26)
  ret void
}

declare dso_local i32 @Text_Width(i8*, float, i32) #1

declare dso_local i32 @Text_Paint(float, float, float, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
