; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_of_display_timing.c_of_get_display_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_of_display_timing.c_of_get_display_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.display_timing = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_get_display_timing(%struct.device_node* %0, i8* %1, %struct.display_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.display_timing*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.display_timing* %2, %struct.display_timing** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %16, i8* %17)
  store %struct.device_node* %18, %struct.device_node** %8, align 8
  %19 = load %struct.device_node*, %struct.device_node** %8, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = load %struct.display_timing*, %struct.display_timing** %7, align 8
  %27 = call i32 @of_parse_display_timing(%struct.device_node* %25, %struct.display_timing* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = call i32 @of_node_put(%struct.device_node* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %21, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_parse_display_timing(%struct.device_node*, %struct.display_timing*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
