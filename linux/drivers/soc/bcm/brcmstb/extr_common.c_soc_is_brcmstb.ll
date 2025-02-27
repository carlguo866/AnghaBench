; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/extr_common.c_soc_is_brcmstb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/extr_common.c_soc_is_brcmstb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@brcmstb_machine_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_is_brcmstb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.of_device_id*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %4, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

8:                                                ; preds = %0
  %9 = load i32, i32* @brcmstb_machine_match, align 4
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call %struct.of_device_id* @of_match_node(i32 %9, %struct.device_node* %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %2, align 8
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i32 @of_node_put(%struct.device_node* %12)
  %14 = load %struct.of_device_id*, %struct.of_device_id** %2, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %8, %7
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
