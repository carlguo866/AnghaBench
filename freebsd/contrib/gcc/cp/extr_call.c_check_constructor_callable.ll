; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_check_constructor_callable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_check_constructor_callable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@complete_ctor_identifier = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@LOOKUP_NO_CONVERSION = common dso_local global i32 0, align 4
@LOOKUP_CONSTRUCTOR_CALLABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @check_constructor_callable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_constructor_callable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @NULL_TREE, align 4
  %6 = load i32, i32* @complete_ctor_identifier, align 4
  %7 = load i32, i32* @NULL_TREE, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @build_tree_list(i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LOOKUP_NORMAL, align 4
  %12 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LOOKUP_NO_CONVERSION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LOOKUP_CONSTRUCTOR_CALLABLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @build_special_member_call(i32 %5, i32 %6, i32 %9, i32 %10, i32 %17)
  ret void
}

declare dso_local i32 @build_special_member_call(i32, i32, i32, i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
