; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_dump_tdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_dump_tdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.gdbarch_tdep = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"arm_dump_tdep: Lowest pc = 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.ui_file*)* @arm_dump_tdep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_dump_tdep(%struct.gdbarch* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %6)
  store %struct.gdbarch_tdep* %7, %struct.gdbarch_tdep** %5, align 8
  %8 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %9 = icmp eq %struct.gdbarch_tdep* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %13 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %14 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @fprintf_unfiltered(%struct.ui_file* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
