; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_get_node_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_get_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32 }
%struct.gcov_node = type { %struct.gcov_info*, %struct.gcov_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gcov_info* (%struct.gcov_node*)* @get_node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gcov_info* @get_node_info(%struct.gcov_node* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  %4 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %5 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %4, i32 0, i32 1
  %6 = load %struct.gcov_info*, %struct.gcov_info** %5, align 8
  %7 = icmp ne %struct.gcov_info* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %10 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %9, i32 0, i32 1
  %11 = load %struct.gcov_info*, %struct.gcov_info** %10, align 8
  store %struct.gcov_info* %11, %struct.gcov_info** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %14 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %13, i32 0, i32 0
  %15 = load %struct.gcov_info*, %struct.gcov_info** %14, align 8
  store %struct.gcov_info* %15, %struct.gcov_info** %2, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  ret %struct.gcov_info* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
