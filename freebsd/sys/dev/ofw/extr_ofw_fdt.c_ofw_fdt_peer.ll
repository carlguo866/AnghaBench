; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_fdt.c_ofw_fdt_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_fdt.c_ofw_fdt_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @ofw_fdt_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ofw_fdt_peer(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @fdtp, align 4
  %11 = call i32 @fdt_path_offset(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @fdt_offset_phandle(i32 %12)
  store i64 %13, i64* %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @fdt_phandle_offset(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @fdtp, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @fdt_next_subnode(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @fdt_offset_phandle(i32 %24)
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %20, %19, %9
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i32 @fdt_path_offset(i32, i8*) #1

declare dso_local i64 @fdt_offset_phandle(i32) #1

declare dso_local i32 @fdt_phandle_offset(i64) #1

declare dso_local i32 @fdt_next_subnode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
