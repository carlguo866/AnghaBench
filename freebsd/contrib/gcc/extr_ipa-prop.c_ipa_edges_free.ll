; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_edges_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_edges_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge*, %struct.cgraph_node* }
%struct.cgraph_edge = type { i32*, %struct.cgraph_edge* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipa_edges_free() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca %struct.cgraph_edge*, align 8
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %3, %struct.cgraph_node** %1, align 8
  br label %4

4:                                                ; preds = %26, %0
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %6 = icmp ne %struct.cgraph_node* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i32 0, i32 0
  %10 = load %struct.cgraph_edge*, %struct.cgraph_edge** %9, align 8
  store %struct.cgraph_edge* %10, %struct.cgraph_edge** %2, align 8
  br label %11

11:                                               ; preds = %21, %7
  %12 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %13 = icmp ne %struct.cgraph_edge* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %16 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free(i32* %17)
  %19 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14
  %22 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %23 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %22, i32 0, i32 1
  %24 = load %struct.cgraph_edge*, %struct.cgraph_edge** %23, align 8
  store %struct.cgraph_edge* %24, %struct.cgraph_edge** %2, align 8
  br label %11

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %28 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %27, i32 0, i32 1
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %28, align 8
  store %struct.cgraph_node* %29, %struct.cgraph_node** %1, align 8
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
