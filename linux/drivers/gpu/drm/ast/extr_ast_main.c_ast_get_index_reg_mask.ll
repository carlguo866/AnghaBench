; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_get_index_reg_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_get_index_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_get_index_reg_mask(%struct.ast_private* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ast_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ast_io_write8(%struct.ast_private* %10, i64 %11, i32 %12)
  %14 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @ast_io_read8(%struct.ast_private* %14, i64 %16)
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  ret i32 %20
}

declare dso_local i32 @ast_io_write8(%struct.ast_private*, i64, i32) #1

declare dso_local i32 @ast_io_read8(%struct.ast_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
