; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_addtt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_addtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@attypes = common dso_local global %struct.TYPE_4__* null, align 8
@timecnt = common dso_local global i64 0, align 8
@timecnt_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @addtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addtt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @attypes, align 8
  %6 = load i64, i64* @timecnt, align 8
  %7 = call %struct.TYPE_4__* @growalloc(%struct.TYPE_4__* %5, i32 12, i64 %6, i32* @timecnt_alloc)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** @attypes, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @attypes, align 8
  %10 = load i64, i64* @timecnt, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %8, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @attypes, align 8
  %14 = load i64, i64* @timecnt, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @attypes, align 8
  %19 = load i64, i64* @timecnt, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i64, i64* @timecnt, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @timecnt, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @growalloc(%struct.TYPE_4__*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
