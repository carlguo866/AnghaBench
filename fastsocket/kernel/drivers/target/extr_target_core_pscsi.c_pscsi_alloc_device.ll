; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_hba = type { i32 }
%struct.pscsi_dev_virt = type { %struct.se_device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unable to allocate memory for struct pscsi_dev_virt\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"PSCSI: Allocated pdv: %p for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_device* (%struct.se_hba*, i8*)* @pscsi_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_device* @pscsi_alloc_device(%struct.se_hba* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pscsi_dev_virt*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pscsi_dev_virt* @kzalloc(i32 4, i32 %7)
  store %struct.pscsi_dev_virt* %8, %struct.pscsi_dev_virt** %6, align 8
  %9 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %10 = icmp ne %struct.pscsi_dev_virt* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store %struct.se_device* null, %struct.se_device** %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.pscsi_dev_virt* %14, i8* %15)
  %17 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %18 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %17, i32 0, i32 0
  store %struct.se_device* %18, %struct.se_device** %3, align 8
  br label %19

19:                                               ; preds = %13, %11
  %20 = load %struct.se_device*, %struct.se_device** %3, align 8
  ret %struct.se_device* %20
}

declare dso_local %struct.pscsi_dev_virt* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, %struct.pscsi_dev_virt*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
