; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_is_key.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_is_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracing_map*, i32)* @is_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_key(%struct.tracing_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tracing_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tracing_map* %0, %struct.tracing_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tracing_map*, %struct.tracing_map** %4, align 8
  %10 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.tracing_map*, %struct.tracing_map** %4, align 8
  %15 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
