; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_port_indx_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_port_indx_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun = type { i32, i32 }
%struct.se_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_stat_port_indx_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_stat_port_indx_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.config_item*, %struct.config_item** %3, align 8
  %9 = call %struct.se_lun* @to_stat_port(%struct.config_item* %8)
  store %struct.se_lun* %9, %struct.se_lun** %5, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %14 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.se_device* @rcu_dereference(i32 %15)
  store %struct.se_device* %16, %struct.se_device** %6, align 8
  %17 = load %struct.se_device*, %struct.se_device** %6, align 8
  %18 = icmp ne %struct.se_device* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %23 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local %struct.se_lun* @to_stat_port(%struct.config_item*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_device* @rcu_dereference(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
