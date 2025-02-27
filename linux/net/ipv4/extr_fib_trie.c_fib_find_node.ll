; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_find_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_fib_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_vector = type { i64 }
%struct.trie = type { %struct.key_vector* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (%struct.trie*, %struct.key_vector**, i32)* @fib_find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @fib_find_node(%struct.trie* %0, %struct.key_vector** %1, i32 %2) #0 {
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.key_vector**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.key_vector*, align 8
  %8 = alloca %struct.key_vector*, align 8
  %9 = alloca i64, align 8
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.key_vector** %1, %struct.key_vector*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.trie*, %struct.trie** %4, align 8
  %11 = getelementptr inbounds %struct.trie, %struct.trie* %10, i32 0, i32 0
  %12 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  store %struct.key_vector* %12, %struct.key_vector** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %33, %3
  %14 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  store %struct.key_vector* %14, %struct.key_vector** %7, align 8
  %15 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call %struct.key_vector* @get_child_rcu(%struct.key_vector* %15, i64 %16)
  store %struct.key_vector* %17, %struct.key_vector** %8, align 8
  %18 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %19 = icmp ne %struct.key_vector* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %37

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %24 = call i64 @get_cindex(i32 %22, %struct.key_vector* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %27 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 1, %28
  %30 = icmp uge i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store %struct.key_vector* null, %struct.key_vector** %8, align 8
  br label %37

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  %35 = call i64 @IS_TNODE(%struct.key_vector* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %13, label %37

37:                                               ; preds = %33, %31, %20
  %38 = load %struct.key_vector*, %struct.key_vector** %7, align 8
  %39 = load %struct.key_vector**, %struct.key_vector*** %5, align 8
  store %struct.key_vector* %38, %struct.key_vector** %39, align 8
  %40 = load %struct.key_vector*, %struct.key_vector** %8, align 8
  ret %struct.key_vector* %40
}

declare dso_local %struct.key_vector* @get_child_rcu(%struct.key_vector*, i64) #1

declare dso_local i64 @get_cindex(i32, %struct.key_vector*) #1

declare dso_local i64 @IS_TNODE(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
