; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_coretemp.c_tegra124_coretemp_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_coretemp.c_tegra124_coretemp_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"nvidia,tegra124\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"tegra124_coretemp\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"add child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @tegra124_coretemp_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra124_coretemp_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ofw_bus_node_is_compatible(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32* @device_find_child(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %23

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @BUS_ADD_CHILD(i32 %17, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %10, %15, %20, %16
  ret void
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
