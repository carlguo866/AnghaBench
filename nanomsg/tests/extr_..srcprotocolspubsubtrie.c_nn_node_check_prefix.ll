; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_check_prefix.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_check_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_trie_node = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_node_check_prefix(%struct.nn_trie_node* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_trie_node*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nn_trie_node* %0, %struct.nn_trie_node** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.nn_trie_node*, %struct.nn_trie_node** %5, align 8
  %12 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.nn_trie_node*, %struct.nn_trie_node** %5, align 8
  %20 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %18
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.nn_trie_node*, %struct.nn_trie_node** %5, align 8
  %41 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
