; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/board/ox820/extr_ox820.c_board_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/board/ox820/extr_ox820.c_board_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@CONFIG_SYS_SDRAM_BASE = common dso_local global i64 0, align 8
@gd = common dso_local global %struct.TYPE_4__* null, align 8
@MACH_TYPE_OXNAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @board_init() #0 {
  %1 = load i64, i64* @CONFIG_SYS_SDRAM_BASE, align 8
  %2 = add nsw i64 %1, 256
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @MACH_TYPE_OXNAS, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gd, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
