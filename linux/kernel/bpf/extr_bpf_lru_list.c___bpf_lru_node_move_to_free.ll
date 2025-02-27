; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_node_move_to_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_node_move_to_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.bpf_lru_node = type { i32, %struct.TYPE_2__ }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru_list*, %struct.bpf_lru_node*, %struct.list_head*, i32)* @__bpf_lru_node_move_to_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_lru_node_move_to_free(%struct.bpf_lru_list* %0, %struct.bpf_lru_node* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_lru_list*, align 8
  %6 = alloca %struct.bpf_lru_node*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_lru_list* %0, %struct.bpf_lru_list** %5, align 8
  store %struct.bpf_lru_node* %1, %struct.bpf_lru_node** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %6, align 8
  %10 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_LOCAL_LIST_TYPE(i32 %11)
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %44

16:                                               ; preds = %4
  %17 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %6, align 8
  %18 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %17, i32 0, i32 1
  %19 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_lru_list, %struct.bpf_lru_list* %29, i32 0, i32 0
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %30, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %5, align 8
  %33 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %6, align 8
  %34 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bpf_lru_list_count_dec(%struct.bpf_lru_list* %32, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %6, align 8
  %39 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bpf_lru_node*, %struct.bpf_lru_node** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_lru_node, %struct.bpf_lru_node* %40, i32 0, i32 1
  %42 = load %struct.list_head*, %struct.list_head** %7, align 8
  %43 = call i32 @list_move(%struct.TYPE_2__* %41, %struct.list_head* %42)
  br label %44

44:                                               ; preds = %31, %15
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_LOCAL_LIST_TYPE(i32) #1

declare dso_local i32 @bpf_lru_list_count_dec(%struct.bpf_lru_list*, i32) #1

declare dso_local i32 @list_move(%struct.TYPE_2__*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
