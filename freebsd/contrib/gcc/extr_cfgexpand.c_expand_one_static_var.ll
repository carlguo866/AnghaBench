; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_expand_one_static_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_expand_one_static_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)* }

@flag_unit_at_a_time = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @expand_one_static_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_one_static_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @flag_unit_at_a_time, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DECL_ORIGIN(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @TREE_ASM_WRITTEN(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %22

13:                                               ; preds = %6
  %14 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 %14(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @rest_of_decl_compilation(i32 %20, i32 0, i32 0)
  br label %22

22:                                               ; preds = %19, %18, %12, %5
  ret void
}

declare dso_local i32 @DECL_ORIGIN(i32) #1

declare dso_local i64 @TREE_ASM_WRITTEN(i32) #1

declare dso_local i32 @rest_of_decl_compilation(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
