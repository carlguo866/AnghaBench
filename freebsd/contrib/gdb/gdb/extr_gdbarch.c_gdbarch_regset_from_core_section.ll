; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_regset_from_core_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_regset_from_core_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset = type { i32 }
%struct.gdbarch = type { {}* }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"gdbarch_regset_from_core_section called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regset* @gdbarch_regset_from_core_section(%struct.gdbarch* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %8 = icmp ne %struct.gdbarch* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @gdb_assert(i32 %9)
  %11 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %12 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to %struct.regset* (%struct.gdbarch*, i8*, i64)**
  %14 = load %struct.regset* (%struct.gdbarch*, i8*, i64)*, %struct.regset* (%struct.gdbarch*, i8*, i64)** %13, align 8
  %15 = icmp ne %struct.regset* (%struct.gdbarch*, i8*, i64)* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @gdb_assert(i32 %16)
  %18 = load i32, i32* @gdbarch_debug, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @gdb_stdlog, align 4
  %22 = call i32 @fprintf_unfiltered(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %25 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to %struct.regset* (%struct.gdbarch*, i8*, i64)**
  %27 = load %struct.regset* (%struct.gdbarch*, i8*, i64)*, %struct.regset* (%struct.gdbarch*, i8*, i64)** %26, align 8
  %28 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.regset* %27(%struct.gdbarch* %28, i8* %29, i64 %30)
  ret %struct.regset* %31
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
