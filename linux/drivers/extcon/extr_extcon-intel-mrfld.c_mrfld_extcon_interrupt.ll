; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrfld_extcon_data = type { i32 }

@BCOVE_MIRQLVL1 = common dso_local global i32 0, align 4
@BCOVE_LVL1_CHGR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mrfld_extcon_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_extcon_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mrfld_extcon_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mrfld_extcon_data*
  store %struct.mrfld_extcon_data* %8, %struct.mrfld_extcon_data** %5, align 8
  %9 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %5, align 8
  %10 = call i32 @mrfld_extcon_cable_detect(%struct.mrfld_extcon_data* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %5, align 8
  %12 = load i32, i32* @BCOVE_MIRQLVL1, align 4
  %13 = load i32, i32* @BCOVE_LVL1_CHGR, align 4
  %14 = call i32 @mrfld_extcon_clear(%struct.mrfld_extcon_data* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  ret i32 %22
}

declare dso_local i32 @mrfld_extcon_cable_detect(%struct.mrfld_extcon_data*) #1

declare dso_local i32 @mrfld_extcon_clear(%struct.mrfld_extcon_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
