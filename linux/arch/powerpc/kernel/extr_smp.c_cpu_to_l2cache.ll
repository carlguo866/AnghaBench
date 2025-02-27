; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_cpu_to_l2cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_cpu_to_l2cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (i32)* @cpu_to_l2cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @cpu_to_l2cache(i32 %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpu_present(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.device_node* @of_get_cpu_node(i32 %11, i32* null)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp eq %struct.device_node* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %21, %struct.device_node** %2, align 8
  br label %22

22:                                               ; preds = %16, %15, %9
  %23 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %23
}

declare dso_local i32 @cpu_present(i32) #1

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local %struct.device_node* @of_find_next_cache_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
