; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_unsigned_LEB128.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_unsigned_LEB128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_ext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_ext*, i64)* @emit_unsigned_LEB128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_unsigned_LEB128(%struct.buffer_ext* %0, i64 %1) #0 {
  %3 = alloca %struct.buffer_ext*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.buffer_ext* %0, %struct.buffer_ext** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 127
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = lshr i64 %10, 7
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 128
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %19 = call i32 @buffer_ext_add(%struct.buffer_ext* %18, i32* %5, i32 1)
  br label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %6, label %23

23:                                               ; preds = %20
  ret void
}

declare dso_local i32 @buffer_ext_add(%struct.buffer_ext*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
