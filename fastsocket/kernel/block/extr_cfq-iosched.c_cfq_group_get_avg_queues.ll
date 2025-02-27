; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_get_avg_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_get_avg_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_group = type { i32* }

@cfq_hist_divisor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*, %struct.cfq_group*, i32)* @cfq_group_get_avg_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_group_get_avg_queues(%struct.cfq_data* %0, %struct.cfq_group* %1, i32 %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @cfq_hist_divisor, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @cfq_hist_divisor, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %18 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %19 = call i32 @cfq_group_busy_queues_wl(i32 %16, %struct.cfq_data* %17, %struct.cfq_group* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %21 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %30 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @max(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* @cfq_hist_divisor, align 4
  %46 = udiv i32 %44, %45
  %47 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %48 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %54 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local i32 @cfq_group_busy_queues_wl(i32, %struct.cfq_data*, %struct.cfq_group*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
