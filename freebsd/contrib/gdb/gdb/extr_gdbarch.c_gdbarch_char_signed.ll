; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_char_signed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_char_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"gdbarch_char_signed called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbarch_char_signed(%struct.gdbarch* %0) #0 {
  %2 = alloca %struct.gdbarch*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %2, align 8
  %3 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %4 = icmp ne %struct.gdbarch* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @gdb_assert(i32 %5)
  %7 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %8 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load i32, i32* @gdbarch_debug, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @gdb_stdlog, align 4
  %17 = call i32 @fprintf_unfiltered(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %20 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
