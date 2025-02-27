; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_node_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_node = type { i32 }

@qrtr_node_lock = common dso_local global i32 0, align 4
@qrtr_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qrtr_node* (i32)* @qrtr_node_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qrtr_node* @qrtr_node_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qrtr_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @qrtr_node_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.qrtr_node* @radix_tree_lookup(i32* @qrtr_nodes, i32 %5)
  store %struct.qrtr_node* %6, %struct.qrtr_node** %3, align 8
  %7 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  %8 = call %struct.qrtr_node* @qrtr_node_acquire(%struct.qrtr_node* %7)
  store %struct.qrtr_node* %8, %struct.qrtr_node** %3, align 8
  %9 = call i32 @mutex_unlock(i32* @qrtr_node_lock)
  %10 = load %struct.qrtr_node*, %struct.qrtr_node** %3, align 8
  ret %struct.qrtr_node* %10
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.qrtr_node* @radix_tree_lookup(i32*, i32) #1

declare dso_local %struct.qrtr_node* @qrtr_node_acquire(%struct.qrtr_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
