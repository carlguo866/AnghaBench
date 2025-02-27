; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_bitmap_insert_into_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_bitmap_insert_into_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @bitmap_insert_into_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_insert_into_set(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @SSA_NAME, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @get_value_handle(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @is_gimple_min_invariant(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @VALUE_HANDLE_ID(i32 %23)
  %25 = call i32 @bitmap_set_bit(i32 %22, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @SSA_NAME_VERSION(i32 %29)
  %31 = call i32 @bitmap_set_bit(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @get_value_handle(i32) #1

declare dso_local i32 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @VALUE_HANDLE_ID(i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
