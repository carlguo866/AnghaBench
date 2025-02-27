; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_dbfs.c_hypfs_dbfs_data_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_dbfs.c_hypfs_dbfs_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypfs_dbfs_data = type { %struct.hypfs_dbfs_file* }
%struct.hypfs_dbfs_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hypfs_dbfs_data* (%struct.hypfs_dbfs_file*)* @hypfs_dbfs_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hypfs_dbfs_data* @hypfs_dbfs_data_alloc(%struct.hypfs_dbfs_file* %0) #0 {
  %2 = alloca %struct.hypfs_dbfs_data*, align 8
  %3 = alloca %struct.hypfs_dbfs_file*, align 8
  %4 = alloca %struct.hypfs_dbfs_data*, align 8
  store %struct.hypfs_dbfs_file* %0, %struct.hypfs_dbfs_file** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hypfs_dbfs_data* @kmalloc(i32 8, i32 %5)
  store %struct.hypfs_dbfs_data* %6, %struct.hypfs_dbfs_data** %4, align 8
  %7 = load %struct.hypfs_dbfs_data*, %struct.hypfs_dbfs_data** %4, align 8
  %8 = icmp ne %struct.hypfs_dbfs_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.hypfs_dbfs_data* null, %struct.hypfs_dbfs_data** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %12 = load %struct.hypfs_dbfs_data*, %struct.hypfs_dbfs_data** %4, align 8
  %13 = getelementptr inbounds %struct.hypfs_dbfs_data, %struct.hypfs_dbfs_data* %12, i32 0, i32 0
  store %struct.hypfs_dbfs_file* %11, %struct.hypfs_dbfs_file** %13, align 8
  %14 = load %struct.hypfs_dbfs_data*, %struct.hypfs_dbfs_data** %4, align 8
  store %struct.hypfs_dbfs_data* %14, %struct.hypfs_dbfs_data** %2, align 8
  br label %15

15:                                               ; preds = %10, %9
  %16 = load %struct.hypfs_dbfs_data*, %struct.hypfs_dbfs_data** %2, align 8
  ret %struct.hypfs_dbfs_data* %16
}

declare dso_local %struct.hypfs_dbfs_data* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
