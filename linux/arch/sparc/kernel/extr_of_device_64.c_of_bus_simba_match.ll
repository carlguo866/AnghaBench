; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_64.c_of_bus_simba_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_64.c_of_bus_simba_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SUNW,simba\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @of_bus_simba_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_bus_simba_match(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call i8* @of_get_property(%struct.device_node* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %25

14:                                               ; preds = %9, %1
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i64 @of_node_name_eq(%struct.device_node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i32 @of_find_property(%struct.device_node* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %25

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %14
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %22, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
