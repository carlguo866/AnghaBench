; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_proc_test.c_set_bkpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_proc_test.c_set_bkpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to set breakpoint at 0x%jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_handle*, i64, i32*)* @set_bkpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bkpt(%struct.proc_handle* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.proc_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @proc_bkptset(%struct.proc_handle* %8, i64 %9, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %12, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  ret void
}

declare dso_local i32 @proc_bkptset(%struct.proc_handle*, i64, i32*) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
