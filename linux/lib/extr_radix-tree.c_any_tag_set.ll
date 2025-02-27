; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_any_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_any_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_node = type { i64** }

@RADIX_TREE_TAG_LONGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_node*, i32)* @any_tag_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @any_tag_set(%struct.radix_tree_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_tree_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radix_tree_node* %0, %struct.radix_tree_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @RADIX_TREE_TAG_LONGS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.radix_tree_node*, %struct.radix_tree_node** %4, align 8
  %13 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %12, i32 0, i32 0
  %14 = load i64**, i64*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64*, i64** %14, i64 %16
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %30

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
