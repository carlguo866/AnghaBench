; ModuleID = '/home/carl/AnghaBench/lwan/src/bin/tools/extr_mimegen.c_output_append_padded.c'
source_filename = "/home/carl/AnghaBench/lwan/src/bin/tools/extr_mimegen.c_output_append_padded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output = type { i32 }

@.str = private unnamed_addr constant [9 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.output*, i8*)* @output_append_padded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_append_padded(%struct.output* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.output*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.output* %0, %struct.output** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %10, 8
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.output*, %struct.output** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @output_append_full(%struct.output* %13, i8* %14, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.output*, %struct.output** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @output_append_full(%struct.output* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31, %25, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @output_append_full(%struct.output*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
