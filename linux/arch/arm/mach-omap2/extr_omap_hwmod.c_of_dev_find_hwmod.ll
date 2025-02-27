; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_of_dev_find_hwmod.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_of_dev_find_hwmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.omap_hwmod = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ti,hwmods\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"omap_hwmod: dt %pOFn[%i] uses hwmod %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.omap_hwmod*)* @of_dev_find_hwmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_dev_find_hwmod(%struct.device_node* %0, %struct.omap_hwmod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.omap_hwmod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i32 @of_property_count_strings(%struct.device_node* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @of_property_read_string_index(%struct.device_node* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24, i8** %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %45

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %32 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i8* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %40 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %37, i32 %38, i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %36, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
