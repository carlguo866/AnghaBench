; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_check_present.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_check_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @item_check_present(%struct.radix_tree_root* %0, i64 %1) #0 {
  %3 = alloca %struct.radix_tree_root*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.item*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.item* @radix_tree_lookup(%struct.radix_tree_root* %6, i64 %7)
  store %struct.item* %8, %struct.item** %5, align 8
  %9 = load %struct.item*, %struct.item** %5, align 8
  %10 = icmp ne %struct.item* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.item*, %struct.item** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @item_sanity(%struct.item* %13, i64 %14)
  ret void
}

declare dso_local %struct.item* @radix_tree_lookup(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @item_sanity(%struct.item*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
