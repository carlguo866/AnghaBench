; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_time_bucket_sort_transform.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_time_bucket_sort_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@Var = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @time_bucket_sort_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @time_bucket_sort_transform(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @list_length(i32 %7)
  %9 = icmp sge i32 %8, 2
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @time_bucket_has_const_period_and_offset(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = bitcast %struct.TYPE_4__* %16 to i32*
  store i32* %17, i32** %2, align 8
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lsecond(i32 %21)
  %23 = call i32* @ts_sort_transform_expr(i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @Var, align 4
  %26 = call i32 @IsA(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = bitcast %struct.TYPE_4__* %29 to i32*
  store i32* %30, i32** %2, align 8
  br label %35

31:                                               ; preds = %18
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @copyObject(i32* %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %31, %28, %15
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @time_bucket_has_const_period_and_offset(%struct.TYPE_4__*) #1

declare dso_local i32* @ts_sort_transform_expr(i32) #1

declare dso_local i32 @lsecond(i32) #1

declare dso_local i32 @IsA(i32*, i32) #1

declare dso_local i64 @copyObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
