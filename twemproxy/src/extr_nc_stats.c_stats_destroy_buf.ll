; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_destroy_buf.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_destroy_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats*)* @stats_destroy_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_destroy_buf(%struct.stats* %0) #0 {
  %2 = alloca %struct.stats*, align 8
  store %struct.stats* %0, %struct.stats** %2, align 8
  %3 = load %struct.stats*, %struct.stats** %2, align 8
  %4 = getelementptr inbounds %struct.stats, %struct.stats* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.stats*, %struct.stats** %2, align 8
  %10 = getelementptr inbounds %struct.stats, %struct.stats* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.stats*, %struct.stats** %2, align 8
  %17 = getelementptr inbounds %struct.stats, %struct.stats* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @nc_free(i32* %19)
  %21 = load %struct.stats*, %struct.stats** %2, align 8
  %22 = getelementptr inbounds %struct.stats, %struct.stats* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @nc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
