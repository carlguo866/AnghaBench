; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_is_obj_query_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_is_obj_query_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@general_obj_in_cmd_hdr = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @devx_is_obj_query_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_is_obj_query_cmd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @MLX5_GET(i32 %5, i8* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %11 [
    i32 146, label %10
    i32 144, label %10
    i32 152, label %10
    i32 139, label %10
    i32 135, label %10
    i32 138, label %10
    i32 137, label %10
    i32 133, label %10
    i32 132, label %10
    i32 140, label %10
    i32 148, label %10
    i32 149, label %10
    i32 147, label %10
    i32 150, label %10
    i32 143, label %10
    i32 136, label %10
    i32 145, label %10
    i32 141, label %10
    i32 134, label %10
    i32 131, label %10
    i32 151, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
    i32 142, label %10
  ]

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
