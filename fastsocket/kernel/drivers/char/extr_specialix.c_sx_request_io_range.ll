; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_request_io_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_request_io_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32, i32 }

@SX_BOARD_IS_PCI = common dso_local global i32 0, align 4
@SX_PCI_IO_SPACE = common dso_local global i32 0, align 4
@SX_IO_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"specialix IO8+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.specialix_board*)* @sx_request_io_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_request_io_range(%struct.specialix_board* %0) #0 {
  %2 = alloca %struct.specialix_board*, align 8
  store %struct.specialix_board* %0, %struct.specialix_board** %2, align 8
  %3 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %4 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %7 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SX_BOARD_IS_PCI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @SX_PCI_IO_SPACE, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @SX_IO_SPACE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32* @request_region(i32 %5, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32* @request_region(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
