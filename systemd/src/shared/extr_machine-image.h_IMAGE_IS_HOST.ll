; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_machine-image.h_IMAGE_IS_HOST.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_machine-image.h_IMAGE_IS_HOST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Image = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c".host\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Image*)* @IMAGE_IS_HOST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IMAGE_IS_HOST(%struct.Image* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Image*, align 8
  store %struct.Image* %0, %struct.Image** %3, align 8
  %4 = load %struct.Image*, %struct.Image** %3, align 8
  %5 = call i32 @assert(%struct.Image* %4)
  %6 = load %struct.Image*, %struct.Image** %3, align 8
  %7 = getelementptr inbounds %struct.Image, %struct.Image* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.Image*, %struct.Image** %3, align 8
  %12 = getelementptr inbounds %struct.Image, %struct.Image* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @streq(i64 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %30

17:                                               ; preds = %10, %1
  %18 = load %struct.Image*, %struct.Image** %3, align 8
  %19 = getelementptr inbounds %struct.Image, %struct.Image* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.Image*, %struct.Image** %3, align 8
  %24 = getelementptr inbounds %struct.Image, %struct.Image* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @path_equal(i64 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %22, %17
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @assert(%struct.Image*) #1

declare dso_local i64 @streq(i64, i8*) #1

declare dso_local i64 @path_equal(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
