; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_unwind_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_unwind_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NUM_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.frame_info*)* @mips_unwind_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_unwind_pc(%struct.gdbarch* %0, %struct.frame_info* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.frame_info*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.frame_info* %1, %struct.frame_info** %4, align 8
  %5 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %6 = load i64, i64* @NUM_REGS, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %8 = call %struct.TYPE_2__* @mips_regnum(%struct.gdbarch* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %6, %10
  %12 = call i32 @frame_unwind_register_signed(%struct.frame_info* %5, i64 %11)
  ret i32 %12
}

declare dso_local i32 @frame_unwind_register_signed(%struct.frame_info*, i64) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
