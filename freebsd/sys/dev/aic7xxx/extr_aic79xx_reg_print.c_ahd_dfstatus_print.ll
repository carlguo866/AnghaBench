; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_reg_print.c_ahd_dfstatus_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_reg_print.c_ahd_dfstatus_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DFSTATUS_parse_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DFSTATUS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_dfstatus_print(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @DFSTATUS_parse_table, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ahd_print_register(i32 %7, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 26, i32 %8, i32* %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @ahd_print_register(i32, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
