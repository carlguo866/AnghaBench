; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_sys-hypervisor.c_compiled_by_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_sys-hypervisor.c_compiled_by_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hyp_sysfs_attr = type { i32 }
%struct.xen_compile_info = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@XENVER_compile_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hyp_sysfs_attr*, i8*)* @compiled_by_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compiled_by_show(%struct.hyp_sysfs_attr* %0, i8* %1) #0 {
  %3 = alloca %struct.hyp_sysfs_attr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_compile_info*, align 8
  store %struct.hyp_sysfs_attr* %0, %struct.hyp_sysfs_attr** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xen_compile_info* @kmalloc(i32 8, i32 %9)
  store %struct.xen_compile_info* %10, %struct.xen_compile_info** %6, align 8
  %11 = load %struct.xen_compile_info*, %struct.xen_compile_info** %6, align 8
  %12 = icmp ne %struct.xen_compile_info* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @XENVER_compile_info, align 4
  %15 = load %struct.xen_compile_info*, %struct.xen_compile_info** %6, align 8
  %16 = call i32 @HYPERVISOR_xen_version(i32 %14, %struct.xen_compile_info* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.xen_compile_info*, %struct.xen_compile_info** %6, align 8
  %22 = getelementptr inbounds %struct.xen_compile_info, %struct.xen_compile_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.xen_compile_info*, %struct.xen_compile_info** %6, align 8
  %27 = call i32 @kfree(%struct.xen_compile_info* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.xen_compile_info* @kmalloc(i32, i32) #1

declare dso_local i32 @HYPERVISOR_xen_version(i32, %struct.xen_compile_info*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.xen_compile_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
