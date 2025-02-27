; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_split_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_split_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_mem_node* (%struct.ibv_mem_node*, i64)* @split_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_mem_node* @split_range(%struct.ibv_mem_node* %0, i64 %1) #0 {
  %3 = alloca %struct.ibv_mem_node*, align 8
  %4 = alloca %struct.ibv_mem_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibv_mem_node*, align 8
  store %struct.ibv_mem_node* %0, %struct.ibv_mem_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ibv_mem_node* null, %struct.ibv_mem_node** %6, align 8
  %7 = call %struct.ibv_mem_node* @malloc(i32 24)
  store %struct.ibv_mem_node* %7, %struct.ibv_mem_node** %6, align 8
  %8 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %9 = icmp ne %struct.ibv_mem_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.ibv_mem_node* null, %struct.ibv_mem_node** %3, align 8
  br label %32

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %14 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %19 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %21 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %24 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 1
  %27 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %28 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %30 = call i32 @__mm_add(%struct.ibv_mem_node* %29)
  %31 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  store %struct.ibv_mem_node* %31, %struct.ibv_mem_node** %3, align 8
  br label %32

32:                                               ; preds = %11, %10
  %33 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  ret %struct.ibv_mem_node* %33
}

declare dso_local %struct.ibv_mem_node* @malloc(i32) #1

declare dso_local i32 @__mm_add(%struct.ibv_mem_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
