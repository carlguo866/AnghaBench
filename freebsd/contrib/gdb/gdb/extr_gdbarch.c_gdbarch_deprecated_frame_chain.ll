; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_frame_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_frame_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (%struct.frame_info*)* }
%struct.frame_info = type opaque
%struct.frame_info.0 = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"gdbarch_deprecated_frame_chain called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbarch_deprecated_frame_chain(%struct.gdbarch* %0, %struct.frame_info.0* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.frame_info.0*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.frame_info.0* %1, %struct.frame_info.0** %4, align 8
  %5 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %6 = icmp ne %struct.gdbarch* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @gdb_assert(i32 %7)
  %9 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %10 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %9, i32 0, i32 0
  %11 = load i32 (%struct.frame_info*)*, i32 (%struct.frame_info*)** %10, align 8
  %12 = icmp ne i32 (%struct.frame_info*)* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load i32, i32* @gdbarch_debug, align 4
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @gdb_stdlog, align 4
  %19 = call i32 @fprintf_unfiltered(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %22 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %21, i32 0, i32 0
  %23 = load i32 (%struct.frame_info*)*, i32 (%struct.frame_info*)** %22, align 8
  %24 = load %struct.frame_info.0*, %struct.frame_info.0** %4, align 8
  %25 = bitcast %struct.frame_info.0* %24 to %struct.frame_info*
  %26 = call i32 %23(%struct.frame_info* %25)
  ret i32 %26
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
