; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_bss_initializer_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_bss_initializer_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i32* null, align 8
@flag_zero_initialized_in_bss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bss_initializer_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bss_initializer_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32* @DECL_INITIAL(i32 %3)
  %5 = icmp eq i32* %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32* @DECL_INITIAL(i32 %7)
  %9 = load i32*, i32** @error_mark_node, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* @flag_zero_initialized_in_bss, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @TREE_READONLY(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i32* @DECL_INITIAL(i32 %19)
  %21 = call i64 @initializer_zerop(i32* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %14, %11
  %24 = phi i1 [ false, %14 ], [ false, %11 ], [ %22, %18 ]
  br label %25

25:                                               ; preds = %23, %6, %1
  %26 = phi i1 [ true, %6 ], [ true, %1 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32* @DECL_INITIAL(i32) #1

declare dso_local i32 @TREE_READONLY(i32) #1

declare dso_local i64 @initializer_zerop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
