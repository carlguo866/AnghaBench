; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_of_get_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_of_get_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*, i32)* @cvm_oct_of_get_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @cvm_oct_of_get_child(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.device_node* null, %struct.device_node** %5, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.device_node* @of_get_next_child(%struct.device_node* %9, %struct.device_node* %10)
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %28

15:                                               ; preds = %8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i32* @of_get_property(%struct.device_node* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %28

27:                                               ; preds = %20, %15
  br label %8

28:                                               ; preds = %26, %14
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  ret %struct.device_node* %29
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
