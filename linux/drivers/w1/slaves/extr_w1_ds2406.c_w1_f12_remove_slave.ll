; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2406.c_w1_f12_remove_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2406.c_w1_f12_remove_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NB_SYSFS_BIN_FILES = common dso_local global i32 0, align 4
@w1_f12_sysfs_bin_files = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w1_slave*)* @w1_f12_remove_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w1_f12_remove_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca %struct.w1_slave*, align 8
  %3 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %2, align 8
  %4 = load i32, i32* @NB_SYSFS_BIN_FILES, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %11 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** @w1_f12_sysfs_bin_files, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @sysfs_remove_bin_file(i32* %12, i32* %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
