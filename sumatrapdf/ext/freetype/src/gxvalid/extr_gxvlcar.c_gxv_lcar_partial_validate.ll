; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvlcar.c_gxv_lcar_partial_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvlcar.c_gxv_lcar_partial_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@format = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @gxv_lcar_partial_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_lcar_partial_validate(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @format, align 4
  %9 = call i32 @GXV_LCAR_DATA(i32 %8)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @gxv_ctlPoint_validate(i32 %13, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LCAR_DATA(i32) #1

declare dso_local i32 @gxv_ctlPoint_validate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
