; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_output_label_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_output_label_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@label_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i64)* @output_label_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @output_label_state(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @label_state, align 4
  %5 = call %struct.TYPE_10__* @alloc_record(i32 %4)
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 %6, i64* %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %12
}

declare dso_local %struct.TYPE_10__* @alloc_record(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
