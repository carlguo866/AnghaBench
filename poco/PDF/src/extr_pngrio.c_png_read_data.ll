; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrio.c_png_read_data.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrio.c_png_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i64)* }

@.str = private unnamed_addr constant [18 x i8] c"reading %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Call to NULL read function\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_read_data(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @png_debug1(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_5__*, i32, i64)*, i32 (%struct.TYPE_5__*, i32, i64)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_5__*, i32, i64)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_5__*, i32, i64)*, i32 (%struct.TYPE_5__*, i32, i64)** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 %17(%struct.TYPE_5__* %18, i32 %19, i64 %20)
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 @png_error(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @png_debug1(i32, i8*, i32) #1

declare dso_local i32 @png_error(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
