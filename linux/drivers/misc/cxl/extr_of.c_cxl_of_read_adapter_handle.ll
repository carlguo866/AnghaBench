; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_cxl_of_read_adapter_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_cxl_of_read_adapter_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Adapter handle: 0x%.16llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_of_read_adapter_handle(%struct.cxl* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  %7 = load %struct.cxl*, %struct.cxl** %4, align 8
  %8 = getelementptr inbounds %struct.cxl, %struct.cxl* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @read_handle(%struct.device_node* %6, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.cxl*, %struct.cxl** %4, align 8
  %18 = getelementptr inbounds %struct.cxl, %struct.cxl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @read_handle(%struct.device_node*, i32*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
