; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_compare.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_compare(%struct.string* %0, %struct.string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string*, align 8
  %5 = alloca %struct.string*, align 8
  store %struct.string* %0, %struct.string** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  %6 = load %struct.string*, %struct.string** %4, align 8
  %7 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.string*, %struct.string** %5, align 8
  %10 = getelementptr inbounds %struct.string, %struct.string* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.string*, %struct.string** %4, align 8
  %15 = getelementptr inbounds %struct.string, %struct.string* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.string*, %struct.string** %5, align 8
  %18 = getelementptr inbounds %struct.string, %struct.string* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 -1
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.string*, %struct.string** %4, align 8
  %25 = getelementptr inbounds %struct.string, %struct.string* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.string*, %struct.string** %5, align 8
  %28 = getelementptr inbounds %struct.string, %struct.string* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.string*, %struct.string** %4, align 8
  %31 = getelementptr inbounds %struct.string, %struct.string* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nc_strncmp(i32 %26, i32 %29, i64 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @nc_strncmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
