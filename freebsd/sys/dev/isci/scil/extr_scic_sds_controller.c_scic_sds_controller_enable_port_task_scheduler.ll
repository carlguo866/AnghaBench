; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_enable_port_task_scheduler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_enable_port_task_scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETM_ENABLE = common dso_local global i32 0, align 4
@PTSG_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_enable_port_task_scheduler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @SCU_PTSGCR_READ(i32* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @ETM_ENABLE, align 4
  %7 = call i32 @SCU_PTSGCR_GEN_BIT(i32 %6)
  %8 = load i32, i32* @PTSG_ENABLE, align 4
  %9 = call i32 @SCU_PTSGCR_GEN_BIT(i32 %8)
  %10 = or i32 %7, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SCU_PTSGCR_WRITE(i32* %13, i32 %14)
  ret void
}

declare dso_local i32 @SCU_PTSGCR_READ(i32*) #1

declare dso_local i32 @SCU_PTSGCR_GEN_BIT(i32) #1

declare dso_local i32 @SCU_PTSGCR_WRITE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
