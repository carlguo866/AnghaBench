; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_unwind_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_unwind_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_info = type { i32 }

@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.frame_info*)* @alpha_unwind_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_unwind_pc(%struct.gdbarch* %0, %struct.frame_info* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.frame_info* %1, %struct.frame_info** %4, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %7 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %8 = call i32 @frame_unwind_unsigned_register(%struct.frame_info* %6, i32 %7, i32* %5)
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

declare dso_local i32 @frame_unwind_unsigned_register(%struct.frame_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
