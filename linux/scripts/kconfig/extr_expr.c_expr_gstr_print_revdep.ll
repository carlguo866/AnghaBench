; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_gstr_print_revdep.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_gstr_print_revdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32 }
%struct.gstr = type { i32 }

@expr_print_gstr_helper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expr_gstr_print_revdep(%struct.expr* %0, %struct.gstr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.gstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.expr* %0, %struct.expr** %5, align 8
  store %struct.gstr* %1, %struct.gstr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.expr*, %struct.expr** %5, align 8
  %10 = load i32, i32* @expr_print_gstr_helper, align 4
  %11 = load %struct.gstr*, %struct.gstr** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @expr_print_revdep(%struct.expr* %9, i32 %10, %struct.gstr* %11, i32 %12, i8** %8)
  ret void
}

declare dso_local i32 @expr_print_revdep(%struct.expr*, i32, %struct.gstr*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
