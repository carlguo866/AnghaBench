; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_mobility.c_add_dt_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_mobility.c_add_dt_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @add_dt_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dt_node(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @be32_to_cpu(i32 %9)
  %11 = call %struct.device_node* @of_find_node_by_phandle(i32 %10)
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call %struct.device_node* @dlpar_configure_connector(i32 %18, %struct.device_node* %19)
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @dlpar_attach_node(%struct.device_node* %29, %struct.device_node* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i32 @dlpar_free_cc_nodes(%struct.device_node* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = call i32 @of_node_put(%struct.device_node* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %23, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.device_node* @dlpar_configure_connector(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dlpar_attach_node(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @dlpar_free_cc_nodes(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
