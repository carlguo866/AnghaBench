; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_default_roce_tos_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma_configfs.c_default_roce_tos_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.cma_device = type { i32 }
%struct.cma_dev_port_group = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*)* @default_roce_tos_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @default_roce_tos_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cma_device*, align 8
  %7 = alloca %struct.cma_dev_port_group*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call i64 @cma_configfs_params_get(%struct.config_item* %10, %struct.cma_device** %6, %struct.cma_dev_port_group** %7)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %3, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %18 = load %struct.cma_dev_port_group*, %struct.cma_dev_port_group** %7, align 8
  %19 = getelementptr inbounds %struct.cma_dev_port_group, %struct.cma_dev_port_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cma_get_default_roce_tos(%struct.cma_device* %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.cma_device*, %struct.cma_device** %6, align 8
  %23 = call i32 @cma_configfs_params_put(%struct.cma_device* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @cma_configfs_params_get(%struct.config_item*, %struct.cma_device**, %struct.cma_dev_port_group**) #1

declare dso_local i32 @cma_get_default_roce_tos(%struct.cma_device*, i32) #1

declare dso_local i32 @cma_configfs_params_put(%struct.cma_device*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
