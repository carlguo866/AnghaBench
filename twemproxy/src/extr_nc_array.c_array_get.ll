; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_get.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @array_get(%struct.array* %0, i32 %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.array* %0, %struct.array** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.array*, %struct.array** %3, align 8
  %7 = getelementptr inbounds %struct.array, %struct.array* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.array*, %struct.array** %3, align 8
  %15 = getelementptr inbounds %struct.array, %struct.array* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.array*, %struct.array** %3, align 8
  %21 = getelementptr inbounds %struct.array, %struct.array* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.array*, %struct.array** %3, align 8
  %25 = getelementptr inbounds %struct.array, %struct.array* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  ret i8* %32
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
