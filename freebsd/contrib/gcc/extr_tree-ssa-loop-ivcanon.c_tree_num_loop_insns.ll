; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_tree_num_loop_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_tree_num_loop_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_num_loop_insns(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %2, align 8
  %7 = load %struct.loop*, %struct.loop** %2, align 8
  %8 = call i32* @get_loop_body(%struct.loop* %7)
  store i32* %8, i32** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.loop*, %struct.loop** %2, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bsi_start(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %35, %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bsi_end_p(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @bsi_stmt(i32 %28)
  %30 = call i64 @estimate_num_insns(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27
  %36 = call i32 @bsi_next(i32* %4)
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @free(i32* %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @estimate_num_insns(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
