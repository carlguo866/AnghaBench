; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_pinconf_group_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_pinconf_group_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @mxs_pinconf_group_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_pinconf_group_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @mxs_pinconf_group_get(%struct.pinctrl_dev* %8, i32 %9, i64* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @mxs_pinconf_group_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
