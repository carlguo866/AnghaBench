; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_srcmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_srcmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Unrecognized source modifier %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unrecognized_src_mod\00", align 1
@BWRITERSPSM_ABS = common dso_local global i32 0, align 4
@BWRITERSPSM_ABSNEG = common dso_local global i32 0, align 4
@BWRITERSPSM_BIAS = common dso_local global i32 0, align 4
@BWRITERSPSM_BIASNEG = common dso_local global i32 0, align 4
@BWRITERSPSM_COMP = common dso_local global i32 0, align 4
@BWRITERSPSM_DW = common dso_local global i32 0, align 4
@BWRITERSPSM_DZ = common dso_local global i32 0, align 4
@BWRITERSPSM_NEG = common dso_local global i32 0, align 4
@BWRITERSPSM_NOT = common dso_local global i32 0, align 4
@BWRITERSPSM_SIGN = common dso_local global i32 0, align 4
@BWRITERSPSM_SIGNNEG = common dso_local global i32 0, align 4
@BWRITERSPSM_X2 = common dso_local global i32 0, align 4
@BWRITERSPSM_X2NEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_print_srcmod(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5)
  ret i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
